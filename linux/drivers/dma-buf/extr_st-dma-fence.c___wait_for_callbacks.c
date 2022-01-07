
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence {int lock; } ;


 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static void __wait_for_callbacks(struct dma_fence *f)
{
 spin_lock_irq(f->lock);
 spin_unlock_irq(f->lock);
}
