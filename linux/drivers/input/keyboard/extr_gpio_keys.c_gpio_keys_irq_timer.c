
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct input_dev {int dummy; } ;
struct gpio_button_data {int key_pressed; int lock; int * code; struct input_dev* input; } ;


 int EV_KEY ;
 struct gpio_button_data* bdata ;
 struct gpio_button_data* from_timer (int ,struct timer_list*,int ) ;
 int input_event (struct input_dev*,int ,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int release_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gpio_keys_irq_timer(struct timer_list *t)
{
 struct gpio_button_data *bdata = from_timer(bdata, t, release_timer);
 struct input_dev *input = bdata->input;
 unsigned long flags;

 spin_lock_irqsave(&bdata->lock, flags);
 if (bdata->key_pressed) {
  input_event(input, EV_KEY, *bdata->code, 0);
  input_sync(input);
  bdata->key_pressed = 0;
 }
 spin_unlock_irqrestore(&bdata->lock, flags);
}
