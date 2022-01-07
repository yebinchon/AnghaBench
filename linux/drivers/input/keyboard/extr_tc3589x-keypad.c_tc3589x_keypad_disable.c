
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_keypad {int keypad_stopped; struct tc3589x* tc3589x; } ;
struct tc3589x {int dummy; } ;


 int TC3589x_CLKEN ;
 int TC3589x_EVT_INT ;
 int TC3589x_EVT_INT_CLR ;
 int TC3589x_EVT_LOSS_INT ;
 int TC3589x_KBDIC ;
 int TC3589x_KBDMSK ;
 int TC3589x_KBDRST ;
 int TC3589x_KBD_INT_CLR ;
 int TC3589x_RSTCTRL ;
 int tc3589x_set_bits (struct tc3589x*,int ,int,int) ;

__attribute__((used)) static int tc3589x_keypad_disable(struct tc_keypad *keypad)
{
 struct tc3589x *tc3589x = keypad->tc3589x;
 int ret;


 ret = tc3589x_set_bits(tc3589x, TC3589x_KBDIC,
   0x0, TC3589x_EVT_INT_CLR | TC3589x_KBD_INT_CLR);
 if (ret < 0)
  return ret;


 ret = tc3589x_set_bits(tc3589x, TC3589x_KBDMSK,
   ~(TC3589x_EVT_LOSS_INT | TC3589x_EVT_INT), 0x0);
 if (ret < 0)
  return ret;


 ret = tc3589x_set_bits(tc3589x, TC3589x_CLKEN, 0x1, 0x0);
 if (ret < 0)
  return ret;


 ret = tc3589x_set_bits(tc3589x, TC3589x_RSTCTRL, TC3589x_KBDRST, 0x1);

 keypad->keypad_stopped = 1;

 return ret;
}
