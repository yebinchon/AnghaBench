
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 unsigned long W83627HF_BASE_PWM_FREQ ;

__attribute__((used)) static inline unsigned long pwm_freq_from_reg_627hf(u8 reg)
{
 unsigned long freq;
 freq = W83627HF_BASE_PWM_FREQ >> reg;
 return freq;
}
