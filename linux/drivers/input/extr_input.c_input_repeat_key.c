
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct input_value {int member_2; int member_1; int member_0; } ;
struct input_dev {int event_lock; scalar_t__* rep; int timer; int repeat_key; int keybit; int key; } ;


 int ARRAY_SIZE (struct input_value*) ;
 int EV_KEY ;
 int KEY_MAX ;
 size_t REP_PERIOD ;
 struct input_dev* dev ;
 struct input_dev* from_timer (int ,struct timer_list*,int ) ;
 int input_pass_values (struct input_dev*,struct input_value*,int ) ;
 struct input_value input_value_sync ;
 scalar_t__ is_event_supported (int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int ) ;
 int timer ;

__attribute__((used)) static void input_repeat_key(struct timer_list *t)
{
 struct input_dev *dev = from_timer(dev, t, timer);
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);

 if (test_bit(dev->repeat_key, dev->key) &&
     is_event_supported(dev->repeat_key, dev->keybit, KEY_MAX)) {
  struct input_value vals[] = {
   { EV_KEY, dev->repeat_key, 2 },
   input_value_sync
  };

  input_pass_values(dev, vals, ARRAY_SIZE(vals));

  if (dev->rep[REP_PERIOD])
   mod_timer(&dev->timer, jiffies +
     msecs_to_jiffies(dev->rep[REP_PERIOD]));
 }

 spin_unlock_irqrestore(&dev->event_lock, flags);
}
