
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pwm_enable { ____Placeholder_pwm_enable } pwm_enable ;


 int off ;

__attribute__((used)) static int pwm_enable_to_reg(enum pwm_enable mode)
{
 if (mode == off)
  return 0;
 return mode - 1;
}
