
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_keypad {int check_matrix_timer; scalar_t__ stable_count; scalar_t__ enabled; scalar_t__ mmio_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned short KBD_STAT_KDIE ;
 unsigned short KBD_STAT_KPKD ;
 unsigned short KBD_STAT_KPKR ;
 unsigned short KBD_STAT_KRIE ;
 scalar_t__ KPSR ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 unsigned short readw (scalar_t__) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static irqreturn_t imx_keypad_irq_handler(int irq, void *dev_id)
{
 struct imx_keypad *keypad = dev_id;
 unsigned short reg_val;

 reg_val = readw(keypad->mmio_base + KPSR);


 reg_val &= ~(KBD_STAT_KRIE | KBD_STAT_KDIE);

 reg_val |= KBD_STAT_KPKR | KBD_STAT_KPKD;
 writew(reg_val, keypad->mmio_base + KPSR);

 if (keypad->enabled) {

  keypad->stable_count = 0;


  mod_timer(&keypad->check_matrix_timer,
     jiffies + msecs_to_jiffies(2));
 }

 return IRQ_HANDLED;
}
