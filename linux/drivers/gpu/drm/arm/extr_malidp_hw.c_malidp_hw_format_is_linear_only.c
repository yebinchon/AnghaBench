
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
bool malidp_hw_format_is_linear_only(u32 format)
{
 switch (format) {
 case 146:
 case 138:
 case 144:
 case 145:
 case 136:
 case 142:
 case 131:
 case 130:
 case 135:
 case 141:
 case 139:
 case 140:
 case 147:
 case 137:
 case 143:
 case 134:
 case 128:
 case 129:
 case 132:
 case 133:
  return 1;
 default:
  return 0;
 }
}
