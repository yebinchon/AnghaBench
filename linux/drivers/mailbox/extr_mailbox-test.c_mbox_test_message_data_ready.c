
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_test_device {int lock; } ;


 int mbox_data_ready ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool mbox_test_message_data_ready(struct mbox_test_device *tdev)
{
 bool data_ready;
 unsigned long flags;

 spin_lock_irqsave(&tdev->lock, flags);
 data_ready = mbox_data_ready;
 spin_unlock_irqrestore(&tdev->lock, flags);

 return data_ready;
}
