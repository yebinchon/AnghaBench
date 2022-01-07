
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum pwm_freq { ____Placeholder_pwm_freq } pwm_freq ;


 int** lm93_pwm_map ;

__attribute__((used)) static u8 LM93_PWM_TO_REG(int pwm, enum pwm_freq freq)
{
 int i;
 for (i = 0; i < 13; i++)
  if (pwm <= lm93_pwm_map[freq][i])
   break;


 return (u8)i;
}
