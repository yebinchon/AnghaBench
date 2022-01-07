
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EPROTO ;
 int PWM_ENABLE_MODE_MASK ;





__attribute__((used)) static inline int pwm_enable_from_reg(u8 reg)
{
 switch (reg & PWM_ENABLE_MODE_MASK) {
 case 128:
  return 0;
 case 130:
 case 129:
  return 1;
 case 131:
  return 2;
 default:
  return -EPROTO;
 }
}
