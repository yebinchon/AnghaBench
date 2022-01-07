
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_chan {int lock; int * vd_terminated; int task; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;
 int vchan_vdesc_fini (int *) ;

__attribute__((used)) static inline void vchan_synchronize(struct virt_dma_chan *vc)
{
 unsigned long flags;

 tasklet_kill(&vc->task);

 spin_lock_irqsave(&vc->lock, flags);
 if (vc->vd_terminated) {
  vchan_vdesc_fini(vc->vd_terminated);
  vc->vd_terminated = ((void*)0);
 }
 spin_unlock_irqrestore(&vc->lock, flags);
}
