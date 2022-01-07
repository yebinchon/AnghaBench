
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct input_dev {TYPE_2__ dev; } ;
struct gpio_button_data {int irq; int key_pressed; int lock; scalar_t__ release_delay; int release_timer; int * code; struct input_dev* input; TYPE_1__* button; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {scalar_t__ wakeup; } ;


 int BUG_ON (int) ;
 int EV_KEY ;
 int IRQ_HANDLED ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int pm_wakeup_event (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t gpio_keys_irq_isr(int irq, void *dev_id)
{
 struct gpio_button_data *bdata = dev_id;
 struct input_dev *input = bdata->input;
 unsigned long flags;

 BUG_ON(irq != bdata->irq);

 spin_lock_irqsave(&bdata->lock, flags);

 if (!bdata->key_pressed) {
  if (bdata->button->wakeup)
   pm_wakeup_event(bdata->input->dev.parent, 0);

  input_event(input, EV_KEY, *bdata->code, 1);
  input_sync(input);

  if (!bdata->release_delay) {
   input_event(input, EV_KEY, *bdata->code, 0);
   input_sync(input);
   goto out;
  }

  bdata->key_pressed = 1;
 }

 if (bdata->release_delay)
  mod_timer(&bdata->release_timer,
   jiffies + msecs_to_jiffies(bdata->release_delay));
out:
 spin_unlock_irqrestore(&bdata->lock, flags);
 return IRQ_HANDLED;
}
