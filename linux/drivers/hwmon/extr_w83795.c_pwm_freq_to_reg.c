
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;


 int ARRAY_SIZE (unsigned long*) ;
 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 scalar_t__ abs (unsigned long) ;
 size_t clamp_val (int ,int,int) ;
 size_t find_closest_descending (unsigned long,unsigned long*,int ) ;
 unsigned long* pwm_freq_cksel0 ;

__attribute__((used)) static u8 pwm_freq_to_reg(unsigned long val, u16 clkin)
{
 unsigned long base_clock;
 u8 reg0, reg1;
 unsigned long best0, best1;


 reg0 = find_closest_descending(val, pwm_freq_cksel0,
           ARRAY_SIZE(pwm_freq_cksel0));
 if (val < 375)
  return reg0;
 best0 = pwm_freq_cksel0[reg0];


 base_clock = clkin * 1000 / ((clkin == 48000) ? 384 : 256);
 reg1 = clamp_val(DIV_ROUND_CLOSEST(base_clock, val), 1, 128);
 best1 = base_clock / reg1;
 reg1 = 0x80 | (reg1 - 1);


 if (abs(val - best0) > abs(val - best1))
  return reg1;
 else
  return reg0;
}
