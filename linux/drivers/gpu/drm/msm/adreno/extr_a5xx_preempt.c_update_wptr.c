
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_ringbuffer {int lock; } ;
struct msm_gpu {int dummy; } ;


 int REG_A5XX_CP_RB_WPTR ;
 int get_wptr (struct msm_ringbuffer*) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void update_wptr(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
 unsigned long flags;
 uint32_t wptr;

 if (!ring)
  return;

 spin_lock_irqsave(&ring->lock, flags);
 wptr = get_wptr(ring);
 spin_unlock_irqrestore(&ring->lock, flags);

 gpu_write(gpu, REG_A5XX_CP_RB_WPTR, wptr);
}
