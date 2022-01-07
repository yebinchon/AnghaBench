
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfd_dev {int interrupts_active; int ih_fifo; int ih_wq; int interrupt_lock; } ;


 int flush_workqueue (int ) ;
 int kfifo_free (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void kfd_interrupt_exit(struct kfd_dev *kfd)
{





 unsigned long flags;

 spin_lock_irqsave(&kfd->interrupt_lock, flags);
 kfd->interrupts_active = 0;
 spin_unlock_irqrestore(&kfd->interrupt_lock, flags);






 flush_workqueue(kfd->ih_wq);

 kfifo_free(&kfd->ih_fifo);
}
