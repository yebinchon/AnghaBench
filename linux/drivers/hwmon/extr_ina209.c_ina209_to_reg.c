
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int EACCES ;
 int clamp_val (long,int,int) ;

__attribute__((used)) static int ina209_to_reg(u8 reg, u16 old, long val)
{
 switch (reg) {
 case 128:
 case 129:

  return clamp_val(val, -320, 320) * 100;

 case 136:
 case 134:
 case 137:
 case 135:






  return (DIV_ROUND_CLOSEST(clamp_val(val, 0, 32000), 4) << 3)
    | (old & 0x7);

 case 133:







  return (clamp_val(-val, 0, 255) << 8) | (old & 0xff);

 case 132:






  return (clamp_val(val, 0, 255) << 8) | (old & 0xff);

 case 130:
 case 131:

  return DIV_ROUND_CLOSEST(val, 20 * 1000);
 }


 return -EACCES;
}
