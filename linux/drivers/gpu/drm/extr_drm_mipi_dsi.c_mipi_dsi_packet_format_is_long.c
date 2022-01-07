
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
bool mipi_dsi_packet_format_is_long(u8 type)
{
 switch (type) {
 case 128:
 case 138:
 case 142:
 case 140:
 case 141:
 case 139:
 case 130:
 case 131:
 case 134:
 case 133:
 case 132:
 case 137:
 case 136:
 case 129:
 case 135:
  return 1;
 }

 return 0;
}
