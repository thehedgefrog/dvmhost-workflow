#/**
#* Digital Voice Modem - Host Software
#* GPLv2 Open Source. Use is subject to license terms.
#* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#*
#* @package DVM / Host Software
#*
#*/
#/*
#*   Copyright (C) 2024 by Bryan Biedenkapp N2PLL
#*
#*   This program is free software; you can redistribute it and/or modify
#*   it under the terms of the GNU General Public License as published by
#*   the Free Software Foundation; either version 2 of the License, or
#*   (at your option) any later version.
#*
#*   This program is distributed in the hope that it will be useful,
#*   but WITHOUT ANY WARRANTY; without even the implied warranty of
#*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#*   GNU General Public License for more details.
#*
#*   You should have received a copy of the GNU General Public License
#*   along with this program; if not, write to the Free Software
#*   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#*/
if (ENABLE_TUI_SUPPORT)
    option(ENABLE_SETUP_TUI "Enable interactive setup TUI" on)
    if (ENABLE_SETUP_TUI)
        add_definitions(-DENABLE_SETUP_TUI)
        message(CHECK_START "Interactive Setup TUI - enabled")
    endif (ENABLE_SETUP_TUI)
else()
    set(ENABLE_SETUP_TUI off)
endif (ENABLE_TUI_SUPPORT)

option(DISABLE_MONITOR "Disable dvmmon compilation" off)
if (DISABLE_MONITOR)
    message(CHECK_START "Disable dvmmon compilation - enabled")
endif (DISABLE_MONITOR)

# Debug compilation features/options (these should not be enabled for production!)
option(DEBUG_DMR_PDU_DATA "" off)
option(DEBUG_CRC_ADD "" off)
option(DEBUG_CRC_CHECK "" off)
option(DEBUG_RS "" off)
option(DEBUG_AMBEFEC "" off)
option(DEBUG_MODEM_CAL "" off)
option(DEBUG_MODEM "" off)
option(DEBUG_NXDN_FACCH1 "" off)
option(DEBUG_NXDN_SACCH "" off)
option(DEBUG_NXDN_UDCH "" off)
option(DEBUG_NXDN_LICH "" off)
option(DEBUG_NXDN_CAC "" off)
option(DEBUG_P25_PDU_DATA "" off)
option(DEBUG_P25_HDU "" off)
option(DEBUG_P25_LDU1 "" off)
option(DEBUG_P25_LDU2 "" off)
option(DEBUG_P25_TDULC "" off)
option(DEBUG_P25_TSBK "" off)
option(FORCE_TSBK_CRC_WARN "" off)
option(DEBUG_P25_DFSI "" off)
option(DEBUG_RINGBUFFER "" off)
option(DEBUG_HTTP_PAYLOAD "" off)
option(DEBUG_TRELLIS "" off)

if (DEBUG_DMR_PDU_DATA)
    message(CHECK_START "DMR PDU Data Debug")
    add_definitions(-DDEBUG_DMR_PDU_DATA)
endif (DEBUG_DMR_PDU_DATA)
if (DEBUG_CRC_ADD)
    message(CHECK_START "Common CRC Add Debug")
    add_definitions(-DDEBUG_CRC_ADD)
endif (DEBUG_CRC_ADD)
if (DEBUG_CRC_CHECK)
    message(CHECK_START "Common CRC Check Debug")
    add_definitions(-DDEBUG_CRC_CHECK)
endif (DEBUG_CRC_CHECK)
if (DEBUG_RS)
    message(CHECK_START "Common Reed-Solomon Debug")
    add_definitions(-DDEBUG_RS)
endif (DEBUG_RS)
if (DEBUG_AMBEFEC)
    message(CHECK_START "Common AMBE FEC Debug")
    add_definitions(-DDEBUG_AMBEFEC)
endif (DEBUG_AMBEFEC)
if (DEBUG_MODEM_CAL)
    message(CHECK_START "Host Modem Calibration Debug")
    add_definitions(-DDEBUG_MODEM_CAL)
endif (DEBUG_MODEM_CAL)
if (DEBUG_MODEM)
    message(CHECK_START "Host Modem Debug")
    add_definitions(-DDEBUG_MODEM)
endif (DEBUG_MODEM)
if (DEBUG_NXDN_FACCH1)
    message(CHECK_START "NXDN FACCH1 Debug")
    add_definitions(-DDEBUG_NXDN_FACCH1)
endif (DEBUG_NXDN_FACCH1)
if (DEBUG_NXDN_SACCH)
    message(CHECK_START "NXDN SACCH Debug")
    add_definitions(-DDEBUG_NXDN_SACCH)
endif (DEBUG_NXDN_SACCH)
if (DEBUG_NXDN_UDCH)
    message(CHECK_START "NXDN UDCH Debug")
    add_definitions(-DDEBUG_NXDN_UDCH)
endif (DEBUG_NXDN_UDCH)
if (DEBUG_NXDN_LICH)
    message(CHECK_START "NXDN LICH Debug")
    add_definitions(-DDEBUG_NXDN_LICH)
endif (DEBUG_NXDN_LICH)
if (DEBUG_NXDN_CAC)
    message(CHECK_START "NXDN CAC Debug")
    add_definitions(-DDEBUG_NXDN_CAC)
endif (DEBUG_NXDN_CAC)
if (DEBUG_P25_PDU_DATA)
    message(CHECK_START "P25 PDU Data Debug")
    add_definitions(-DDEBUG_P25_PDU_DATA)
endif (DEBUG_P25_PDU_DATA)
if (DEBUG_P25_HDU)
    message(CHECK_START "P25 HDU Debug")
    add_definitions(-DDEBUG_P25_HDU)
endif (DEBUG_P25_HDU)
if (DEBUG_P25_LDU1)
    message(CHECK_START "P25 LDU1 Debug")
    add_definitions(-DDEBUG_P25_LDU1)
endif (DEBUG_P25_LDU1)
if (DEBUG_P25_LDU2)
    message(CHECK_START "P25 LDU2 Debug")
    add_definitions(-DDEBUG_P25_LDU2)
endif (DEBUG_P25_LDU2)
if (DEBUG_P25_TDULC)
    message(CHECK_START "P25 TDULC Debug")
    add_definitions(-DDEBUG_P25_TDULC)
endif (DEBUG_P25_TDULC)
if (DEBUG_P25_TSBK)
    message(CHECK_START "P25 TSBK Debug")
    add_definitions(-DDEBUG_P25_TSBK)
endif (DEBUG_P25_TSBK)
if (FORCE_TSBK_CRC_WARN)
    message(CHECK_START "Force TSBK CRC Errors as Warnings")
    add_definitions(-DFORCE_TSBK_CRC_WARN)
endif (FORCE_TSBK_CRC_WARN)
if (DEBUG_P25_DFSI)
    message(CHECK_START "P25 DFSI Debug")
    add_definitions(-DDEBUG_P25_DFSI)
endif (DEBUG_P25_DFSI)
if (DEBUG_RINGBUFFER)
    message(CHECK_START "Ringbuffer Debug")
    add_definitions(-DDEBUG_RINGBUFFER)
endif (DEBUG_RINGBUFFER)
if (DEBUG_HTTP_PAYLOAD)
    message(CHECK_START "HTTP Payload Debug")
    add_definitions(-DDEBUG_HTTP_PAYLOAD)
endif (DEBUG_HTTP_PAYLOAD)
if (DEBUG_TRELLIS)
    message(CHECK_START "Trellis Encoding Debug")
    add_definitions(-DDEBUG_TRELLIS)
endif (DEBUG_TRELLIS)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
find_package(Threads REQUIRED)

# add ASIO
add_library(asio::asio INTERFACE IMPORTED)
target_include_directories(asio::asio INTERFACE ${ASIO_INCLUDE_DIR})
target_compile_definitions(asio::asio INTERFACE "ASIO_STANDALONE")
target_link_libraries(asio::asio INTERFACE Threads::Threads)

# Check if platform-specific functions exist
include(CheckCXXSymbolExists)
check_cxx_symbol_exists(sendmsg sys/socket.h HAVE_SENDMSG)
check_cxx_symbol_exists(sendmmsg sys/socket.h HAVE_SENDMMSG)

if (HAVE_SENDMSG)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DHAVE_SENDMSG=1")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DHAVE_SENDMSG=1")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -DHAVE_SENDMSG=1")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DHAVE_SENDMSG=1")
endif (HAVE_SENDMSG)
if (HAVE_SENDMMSG)
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DHAVE_SENDMMSG=1")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DHAVE_SENDMMSG=1")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -DHAVE_SENDMMSG=1")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -DHAVE_SENDMMSG=1")
endif (HAVE_SENDMMSG)
