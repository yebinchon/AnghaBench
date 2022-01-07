
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cm109_dev {int ctl_urb_pending; int buzzer_pending; int ctl_submit_lock; } ;


 int cm109_submit_buzz_toggle (struct cm109_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cm109_toggle_buzzer_async(struct cm109_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->ctl_submit_lock, flags);

 if (dev->ctl_urb_pending) {

  dev->buzzer_pending = 1;
 } else {
  dev->ctl_urb_pending = 1;
  cm109_submit_buzz_toggle(dev);
 }

 spin_unlock_irqrestore(&dev->ctl_submit_lock, flags);
}
