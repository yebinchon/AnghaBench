
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int mutex; int event_lock; } ;


 int input_dev_release_keys (struct input_dev*) ;
 int input_dev_toggle (struct input_dev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void input_reset_device(struct input_dev *dev)
{
 unsigned long flags;

 mutex_lock(&dev->mutex);
 spin_lock_irqsave(&dev->event_lock, flags);

 input_dev_toggle(dev, 1);
 input_dev_release_keys(dev);

 spin_unlock_irqrestore(&dev->event_lock, flags);
 mutex_unlock(&dev->mutex);
}
