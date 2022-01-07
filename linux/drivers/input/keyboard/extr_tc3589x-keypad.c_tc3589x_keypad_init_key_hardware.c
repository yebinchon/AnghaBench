
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_keypad {struct tc3589x_keypad_platform_data* board; struct tc3589x* tc3589x; } ;
struct tc3589x_keypad_platform_data {int kcol; int krow; int settle_time; int debounce_period; } ;
struct tc3589x {int dummy; } ;


 int DEDICATED_KEY_VAL ;
 int EINVAL ;
 int IOCFG_IG ;
 int KP_ROW_SHIFT ;
 int TC3589x_IOCFG ;
 int TC3589x_IOPULLCFG0_LSB ;
 int TC3589x_IOPULLCFG0_MSB ;
 int TC3589x_IOPULLCFG1_LSB ;
 int TC3589x_IOPULLCFG1_MSB ;
 int TC3589x_IOPULLCFG2_LSB ;
 int TC3589x_KBCFG_LSB ;
 int TC3589x_KBCFG_MSB ;
 int TC3589x_KBDBOUNCE ;
 int TC3589x_KBDSETTLE_REG ;
 int TC3589x_KBDSIZE ;
 int TC3589x_MAX_KPCOL ;
 int TC3589x_MAX_KPROW ;
 int TC3589x_PULLUP_ALL_MASK ;
 int tc3589x_reg_write (struct tc3589x*,int ,int) ;
 int tc3589x_set_bits (struct tc3589x*,int ,int,int ) ;

__attribute__((used)) static int tc3589x_keypad_init_key_hardware(struct tc_keypad *keypad)
{
 int ret;
 struct tc3589x *tc3589x = keypad->tc3589x;
 const struct tc3589x_keypad_platform_data *board = keypad->board;


 if (board->kcol > TC3589x_MAX_KPCOL || board->krow > TC3589x_MAX_KPROW)
  return -EINVAL;


 ret = tc3589x_reg_write(tc3589x, TC3589x_KBDSIZE,
   (board->krow << KP_ROW_SHIFT) | board->kcol);
 if (ret < 0)
  return ret;


 ret = tc3589x_reg_write(tc3589x, TC3589x_KBCFG_LSB, DEDICATED_KEY_VAL);
 if (ret < 0)
  return ret;

 ret = tc3589x_reg_write(tc3589x, TC3589x_KBCFG_MSB, DEDICATED_KEY_VAL);
 if (ret < 0)
  return ret;


 ret = tc3589x_reg_write(tc3589x, TC3589x_KBDSETTLE_REG,
    board->settle_time);
 if (ret < 0)
  return ret;


 ret = tc3589x_reg_write(tc3589x, TC3589x_KBDBOUNCE,
    board->debounce_period);
 if (ret < 0)
  return ret;


 ret = tc3589x_set_bits(tc3589x, TC3589x_IOCFG, 0x0, IOCFG_IG);
 if (ret < 0)
  return ret;


 ret = tc3589x_reg_write(tc3589x, TC3589x_IOPULLCFG0_LSB,
     TC3589x_PULLUP_ALL_MASK);
 if (ret < 0)
  return ret;

 ret = tc3589x_reg_write(tc3589x, TC3589x_IOPULLCFG0_MSB,
     TC3589x_PULLUP_ALL_MASK);
 if (ret < 0)
  return ret;


 ret = tc3589x_reg_write(tc3589x, TC3589x_IOPULLCFG1_LSB,
   TC3589x_PULLUP_ALL_MASK);
 if (ret < 0)
  return ret;

 ret = tc3589x_reg_write(tc3589x, TC3589x_IOPULLCFG1_MSB,
   TC3589x_PULLUP_ALL_MASK);
 if (ret < 0)
  return ret;

 ret = tc3589x_reg_write(tc3589x, TC3589x_IOPULLCFG2_LSB,
   TC3589x_PULLUP_ALL_MASK);

 return ret;
}
