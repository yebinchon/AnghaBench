
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dtv_frontend_properties {int modulation; int hierarchy; int code_rate_HP; } ;


 int EINVAL ;
__attribute__((used)) static int configure_reg0xc05 (struct dtv_frontend_properties *p, u16 *reg0xc05)
{
 int known_parameters = 1;

 *reg0xc05 = 0x000;

 switch (p->modulation) {
 case 128:
  break;
 case 131:
  *reg0xc05 |= (1 << 10);
  break;
 case 130:
  *reg0xc05 |= (2 << 10);
  break;
 case 129:
  known_parameters = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (p->hierarchy) {
 case 132:
  break;
 case 136:
  *reg0xc05 |= (1 << 7);
  break;
 case 135:
  *reg0xc05 |= (2 << 7);
  break;
 case 134:
  *reg0xc05 |= (3 << 7);
  break;
 case 133:
  known_parameters = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (p->code_rate_HP) {
 case 142:
  break;
 case 141:
  *reg0xc05 |= (1 << 3);
  break;
 case 140:
  *reg0xc05 |= (2 << 3);
  break;
 case 139:
  *reg0xc05 |= (3 << 3);
  break;
 case 138:
  *reg0xc05 |= (4 << 3);
  break;
 case 137:
  known_parameters = 0;
  break;
 default:
  return -EINVAL;
 }

 if (known_parameters)
  *reg0xc05 |= (2 << 1);
 else
  *reg0xc05 |= (1 << 1);

 return 0;
}
