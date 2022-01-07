
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_lldev {int lock; scalar_t__ trca; int tre_write_offset; } ;


 scalar_t__ HIDMA_TRCA_DOORBELL_REG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

void hidma_ll_start(struct hidma_lldev *lldev)
{
 unsigned long irqflags;

 spin_lock_irqsave(&lldev->lock, irqflags);
 writel(lldev->tre_write_offset, lldev->trca + HIDMA_TRCA_DOORBELL_REG);
 spin_unlock_irqrestore(&lldev->lock, irqflags);
}
