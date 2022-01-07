
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef long s16 ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static long ina209_from_reg(const u8 reg, const u16 val)
{
 switch (reg) {
 case 132:
 case 129:
 case 131:
 case 128:
 case 130:

  return DIV_ROUND_CLOSEST((s16)val, 100);

 case 146:
 case 145:
 case 144:
 case 142:
 case 140:
 case 143:
 case 141:

  return (val >> 3) * 4;

 case 138:

  return val >> 8;

 case 139:

  return -1 * (val >> 8);

 case 136:
 case 134:
 case 133:
 case 135:

  return val * 20 * 1000L;

 case 137:

  return (s16)val;
 }


 WARN_ON_ONCE(1);
 return 0;
}
