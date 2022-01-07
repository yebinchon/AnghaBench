
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_keypad {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int OMAP4_KBD_IRQSTATUS ;
 scalar_t__ kbd_read_irqreg (struct omap4_keypad*,int ) ;

__attribute__((used)) static irqreturn_t omap4_keypad_irq_handler(int irq, void *dev_id)
{
 struct omap4_keypad *keypad_data = dev_id;

 if (kbd_read_irqreg(keypad_data, OMAP4_KBD_IRQSTATUS))
  return IRQ_WAKE_THREAD;

 return IRQ_NONE;
}
