
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum pwm_freq { ____Placeholder_pwm_freq } pwm_freq ;


 int** lm93_pwm_map ;

__attribute__((used)) static int LM93_PWM_FROM_REG(u8 reg, enum pwm_freq freq)
{
 return lm93_pwm_map[freq][reg & 0x0f];
}
