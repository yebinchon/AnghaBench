
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
__attribute__((used)) static umode_t lm90_temp_is_visible(const void *data, u32 attr, int channel)
{
 switch (attr) {
 case 133:
 case 129:
 case 131:
 case 139:
 case 136:
 case 135:
 case 134:
  return 0444;
 case 130:
 case 132:
 case 140:
 case 137:
 case 128:
  return 0644;
 case 138:
  if (channel == 0)
   return 0644;
  return 0444;
 default:
  return 0;
 }
}
