
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BUG () ;
__attribute__((used)) static int color_mode_to_bpp(u32 fourcc)
{
 switch (fourcc) {
 case 139:
  return 8;
 case 134:
 case 138:
 case 141:
 case 128:
 case 132:
 case 136:
 case 130:
 case 142:
 case 131:
  return 16;
 case 137:
  return 24;
 case 129:
 case 140:
 case 135:
 case 133:
  return 32;
 default:
  BUG();
  return 0;
 }
}
