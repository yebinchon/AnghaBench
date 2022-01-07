
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 scalar_t__ MK712_CONTROL ;
 scalar_t__ mk712_io ;
 int mk712_lock ;
 int outb (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mk712_close(struct input_dev *dev)
{
 unsigned long flags;

 spin_lock_irqsave(&mk712_lock, flags);

 outb(0, mk712_io + MK712_CONTROL);

 spin_unlock_irqrestore(&mk712_lock, flags);
}
