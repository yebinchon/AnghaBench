
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_keys_button {scalar_t__ type; int code; scalar_t__ wakeup; } ;
struct gpio_button_data {int irq; int software_debounce; int work; TYPE_2__* input; scalar_t__ suspended; struct gpio_keys_button* button; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BUG_ON (int) ;
 scalar_t__ EV_KEY ;
 int IRQ_HANDLED ;
 int input_report_key (TYPE_2__*,int ,int) ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int ) ;
 int pm_stay_awake (int ) ;
 int system_wq ;

__attribute__((used)) static irqreturn_t gpio_keys_gpio_isr(int irq, void *dev_id)
{
 struct gpio_button_data *bdata = dev_id;

 BUG_ON(irq != bdata->irq);

 if (bdata->button->wakeup) {
  const struct gpio_keys_button *button = bdata->button;

  pm_stay_awake(bdata->input->dev.parent);
  if (bdata->suspended &&
      (button->type == 0 || button->type == EV_KEY)) {





   input_report_key(bdata->input, button->code, 1);
  }
 }

 mod_delayed_work(system_wq,
    &bdata->work,
    msecs_to_jiffies(bdata->software_debounce));

 return IRQ_HANDLED;
}
