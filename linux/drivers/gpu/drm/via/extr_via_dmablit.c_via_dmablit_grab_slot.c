
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_free; int blit_lock; int busy_queue; } ;
typedef TYPE_1__ drm_via_blitq_t ;


 int DRM_DEBUG (char*,scalar_t__) ;
 int EAGAIN ;
 int EINTR ;
 int HZ ;
 int VIA_WAIT_ON (int,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
via_dmablit_grab_slot(drm_via_blitq_t *blitq, int engine)
{
 int ret = 0;
 unsigned long irqsave;

 DRM_DEBUG("Num free is %d\n", blitq->num_free);
 spin_lock_irqsave(&blitq->blit_lock, irqsave);
 while (blitq->num_free == 0) {
  spin_unlock_irqrestore(&blitq->blit_lock, irqsave);

  VIA_WAIT_ON(ret, blitq->busy_queue, HZ, blitq->num_free > 0);
  if (ret)
   return (-EINTR == ret) ? -EAGAIN : ret;

  spin_lock_irqsave(&blitq->blit_lock, irqsave);
 }

 blitq->num_free--;
 spin_unlock_irqrestore(&blitq->blit_lock, irqsave);

 return 0;
}
