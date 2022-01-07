
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* lm93_pwm_freq_map ;

__attribute__((used)) static u8 LM93_PWM_FREQ_TO_REG(int freq)
{
 int i;
 for (i = 7; i > 0; i--)
  if (freq <= lm93_pwm_freq_map[i])
   break;


 return (u8)i;
}
