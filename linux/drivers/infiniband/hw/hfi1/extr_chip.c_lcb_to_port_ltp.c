
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCB_CRC_12B_16B_PER_LANE ;
 int LCB_CRC_14B ;
 int LCB_CRC_48B ;
 int PORT_LTP_CRC_MODE_14 ;
 int PORT_LTP_CRC_MODE_16 ;
 int PORT_LTP_CRC_MODE_48 ;
 int PORT_LTP_CRC_MODE_PER_LANE ;

__attribute__((used)) static int lcb_to_port_ltp(int lcb_crc)
{
 int port_ltp = 0;

 if (lcb_crc == LCB_CRC_12B_16B_PER_LANE)
  port_ltp = PORT_LTP_CRC_MODE_PER_LANE;
 else if (lcb_crc == LCB_CRC_48B)
  port_ltp = PORT_LTP_CRC_MODE_48;
 else if (lcb_crc == LCB_CRC_14B)
  port_ltp = PORT_LTP_CRC_MODE_14;
 else
  port_ltp = PORT_LTP_CRC_MODE_16;

 return port_ltp;
}
