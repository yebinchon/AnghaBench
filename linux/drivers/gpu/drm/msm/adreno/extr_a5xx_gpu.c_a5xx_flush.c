
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_ringbuffer {int lock; int next; int cur; } ;
struct msm_gpu {int dummy; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {struct msm_ringbuffer* cur_ring; } ;


 int REG_A5XX_CP_RB_WPTR ;
 int a5xx_in_preempt (struct a5xx_gpu*) ;
 int get_wptr (struct msm_ringbuffer*) ;
 int gpu_write (struct msm_gpu*,int ,int ) ;
 int mb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;

__attribute__((used)) static void a5xx_flush(struct msm_gpu *gpu, struct msm_ringbuffer *ring)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 uint32_t wptr;
 unsigned long flags;

 spin_lock_irqsave(&ring->lock, flags);


 ring->cur = ring->next;


 wptr = get_wptr(ring);

 spin_unlock_irqrestore(&ring->lock, flags);


 mb();


 if (a5xx_gpu->cur_ring == ring && !a5xx_in_preempt(a5xx_gpu))
  gpu_write(gpu, REG_A5XX_CP_RB_WPTR, wptr);
}
