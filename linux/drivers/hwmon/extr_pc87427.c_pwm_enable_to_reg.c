
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PWM_MODE_AUTO ;
 int PWM_MODE_MANUAL ;
 int PWM_MODE_OFF ;
 int PWM_MODE_ON ;

__attribute__((used)) static inline u8 pwm_enable_to_reg(unsigned long val, u8 pwmval)
{
 switch (val) {
 default:
  return PWM_MODE_ON;
 case 1:
  return pwmval ? PWM_MODE_MANUAL : PWM_MODE_OFF;
 case 2:
  return PWM_MODE_AUTO;
 }
}
