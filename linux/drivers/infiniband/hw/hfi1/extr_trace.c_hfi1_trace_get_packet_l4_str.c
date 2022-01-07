
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



const char *hfi1_trace_get_packet_l4_str(u8 l4)
{
 if (l4)
  return "16B";
 else
  return "9B";
}
