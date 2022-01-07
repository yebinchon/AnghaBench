
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int SELF_ID_EXTENDED (int) ;
 int SELF_ID_EXT_SEQUENCE (int) ;
 int SELF_ID_MORE_PACKETS (int) ;

__attribute__((used)) static u32 *count_ports(u32 *sid, int *total_port_count, int *child_port_count)
{
 u32 q;
 int port_type, shift, seq;

 *total_port_count = 0;
 *child_port_count = 0;

 shift = 6;
 q = *sid;
 seq = 0;

 while (1) {
  port_type = (q >> shift) & 0x03;
  switch (port_type) {
  case 131:
   (*child_port_count)++;

  case 128:
  case 130:
   (*total_port_count)++;
  case 129:
   break;
  }

  shift -= 2;
  if (shift == 0) {
   if (!SELF_ID_MORE_PACKETS(q))
    return sid + 1;

   shift = 16;
   sid++;
   q = *sid;
   if (!SELF_ID_EXTENDED(q) ||
       seq != SELF_ID_EXT_SEQUENCE(q))
    return ((void*)0);

   seq++;
  }
 }
}
