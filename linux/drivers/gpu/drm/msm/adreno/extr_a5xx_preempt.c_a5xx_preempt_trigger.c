
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_ringbuffer {size_t id; int lock; } ;
struct msm_gpu {int nr_rings; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int preempt_timer; struct msm_ringbuffer* next_ring; int * preempt_iova; TYPE_1__** preempt; struct msm_ringbuffer* cur_ring; } ;
struct TYPE_2__ {int wptr; } ;


 int PREEMPT_ABORT ;
 int PREEMPT_NONE ;
 int PREEMPT_START ;
 int PREEMPT_TRIGGERED ;
 int REG_A5XX_CP_CONTEXT_SWITCH_CNTL ;
 int REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_HI ;
 int REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_LO ;
 struct msm_ringbuffer* get_next_ring (struct msm_gpu*) ;
 int get_wptr (struct msm_ringbuffer*) ;
 int gpu_write (struct msm_gpu*,int ,int) ;
 int gpu_write64 (struct msm_gpu*,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int set_preempt_state (struct a5xx_gpu*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int try_preempt_state (struct a5xx_gpu*,int ,int ) ;
 int update_wptr (struct msm_gpu*,struct msm_ringbuffer*) ;
 int wmb () ;

void a5xx_preempt_trigger(struct msm_gpu *gpu)
{
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 unsigned long flags;
 struct msm_ringbuffer *ring;

 if (gpu->nr_rings == 1)
  return;





 if (!try_preempt_state(a5xx_gpu, PREEMPT_NONE, PREEMPT_START))
  return;


 ring = get_next_ring(gpu);





 if (!ring || (a5xx_gpu->cur_ring == ring)) {
  set_preempt_state(a5xx_gpu, PREEMPT_ABORT);
  update_wptr(gpu, a5xx_gpu->cur_ring);
  set_preempt_state(a5xx_gpu, PREEMPT_NONE);
  return;
 }


 spin_lock_irqsave(&ring->lock, flags);
 a5xx_gpu->preempt[ring->id]->wptr = get_wptr(ring);
 spin_unlock_irqrestore(&ring->lock, flags);


 gpu_write64(gpu, REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_LO,
  REG_A5XX_CP_CONTEXT_SWITCH_RESTORE_ADDR_HI,
  a5xx_gpu->preempt_iova[ring->id]);

 a5xx_gpu->next_ring = ring;


 mod_timer(&a5xx_gpu->preempt_timer, jiffies + msecs_to_jiffies(10000));


 set_preempt_state(a5xx_gpu, PREEMPT_TRIGGERED);


 wmb();


 gpu_write(gpu, REG_A5XX_CP_CONTEXT_SWITCH_CNTL, 1);
}
