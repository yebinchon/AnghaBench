
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ml_device {struct input_dev* dev; } ;
struct input_dev {int event_lock; } ;


 struct ml_device* from_timer (int ,struct timer_list*,int ) ;
 struct ml_device* ml ;
 int ml_play_effects (struct ml_device*) ;
 int pr_debug (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void ml_effect_timer(struct timer_list *t)
{
 struct ml_device *ml = from_timer(ml, t, timer);
 struct input_dev *dev = ml->dev;
 unsigned long flags;

 pr_debug("timer: updating effects\n");

 spin_lock_irqsave(&dev->event_lock, flags);
 ml_play_effects(ml);
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
