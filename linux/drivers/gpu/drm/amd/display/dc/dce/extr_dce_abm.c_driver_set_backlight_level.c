
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct dce_abm {int dummy; } ;


 int BL_ACTIVE_INT_FRAC_CNT ;
 int BL_PWM_CNTL ;
 int BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN ;
 int BL_PWM_GRP1_REG_LOCK ;
 int BL_PWM_GRP1_REG_UPDATE_PENDING ;
 int BL_PWM_PERIOD ;
 int BL_PWM_PERIOD_BITCNT ;
 int BL_PWM_PERIOD_CNTL ;
 int REG_GET_2 (int ,int ,int*,int ,int*) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;

__attribute__((used)) static void driver_set_backlight_level(struct dce_abm *abm_dce,
  uint32_t backlight_pwm_u16_16)
{
 uint32_t backlight_16bit;
 uint32_t masked_pwm_period;
 uint8_t bit_count;
 uint64_t active_duty_cycle;
 uint32_t pwm_period_bitcnt;
 REG_GET_2(BL_PWM_PERIOD_CNTL,
   BL_PWM_PERIOD_BITCNT, &pwm_period_bitcnt,
   BL_PWM_PERIOD, &masked_pwm_period);

 if (pwm_period_bitcnt == 0)
  bit_count = 16;
 else
  bit_count = pwm_period_bitcnt;


 masked_pwm_period = masked_pwm_period & ((1 << bit_count) - 1);





 active_duty_cycle = backlight_pwm_u16_16 * masked_pwm_period;





 backlight_16bit = active_duty_cycle >> bit_count;
 backlight_16bit &= 0xFFFF;
 backlight_16bit += (active_duty_cycle >> (bit_count - 1)) & 0x1;







 REG_UPDATE_2(BL_PWM_GRP1_REG_LOCK,
   BL_PWM_GRP1_IGNORE_MASTER_LOCK_EN, 1,
   BL_PWM_GRP1_REG_LOCK, 1);


 REG_UPDATE(BL_PWM_CNTL, BL_ACTIVE_INT_FRAC_CNT, backlight_16bit);


 REG_UPDATE(BL_PWM_GRP1_REG_LOCK,
   BL_PWM_GRP1_REG_LOCK, 0);


 REG_WAIT(BL_PWM_GRP1_REG_LOCK,
   BL_PWM_GRP1_REG_UPDATE_PENDING, 0,
   1, 10000);
}
