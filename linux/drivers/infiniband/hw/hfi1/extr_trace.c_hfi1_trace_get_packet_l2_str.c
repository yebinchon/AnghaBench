
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



const char *hfi1_trace_get_packet_l2_str(u8 l2)
{
 switch (l2) {
 case 0:
  return "0";
 case 1:
  return "1";
 case 2:
  return "16B";
 case 3:
  return "9B";
 }
 return "";
}
