
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {int lock; TYPE_1__* memptrs; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; } ;
struct TYPE_2__ {scalar_t__ rptr; } ;


 scalar_t__ get_wptr (struct msm_ringbuffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct msm_ringbuffer *get_next_ring(struct msm_gpu *gpu)
{
 unsigned long flags;
 int i;

 for (i = 0; i < gpu->nr_rings; i++) {
  bool empty;
  struct msm_ringbuffer *ring = gpu->rb[i];

  spin_lock_irqsave(&ring->lock, flags);
  empty = (get_wptr(ring) == ring->memptrs->rptr);
  spin_unlock_irqrestore(&ring->lock, flags);

  if (!empty)
   return ring;
 }

 return ((void*)0);
}
