
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pwm_enable { ____Placeholder_pwm_enable } pwm_enable ;


 int off ;

__attribute__((used)) static enum pwm_enable reg_to_pwm_enable(int pwm, int mode)
{
 if (mode == 0 && pwm == 255)
  return off;
 return mode + 1;
}
