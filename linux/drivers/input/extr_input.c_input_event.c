
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int event_lock; int evbit; } ;


 int EV_MAX ;
 int input_handle_event (struct input_dev*,unsigned int,unsigned int,int) ;
 scalar_t__ is_event_supported (unsigned int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void input_event(struct input_dev *dev,
   unsigned int type, unsigned int code, int value)
{
 unsigned long flags;

 if (is_event_supported(type, dev->evbit, EV_MAX)) {

  spin_lock_irqsave(&dev->event_lock, flags);
  input_handle_event(dev, type, code, value);
  spin_unlock_irqrestore(&dev->event_lock, flags);
 }
}
