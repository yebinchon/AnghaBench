
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int time; scalar_t__ active; } ;
struct msm_gpu {int perf_lock; TYPE_1__ last_sample; int activetime; int totaltime; int perfcntr_active; } ;
typedef int ktime_t ;


 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_us (int ) ;
 scalar_t__ msm_gpu_active (struct msm_gpu*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void update_sw_cntrs(struct msm_gpu *gpu)
{
 ktime_t time;
 uint32_t elapsed;
 unsigned long flags;

 spin_lock_irqsave(&gpu->perf_lock, flags);
 if (!gpu->perfcntr_active)
  goto out;

 time = ktime_get();
 elapsed = ktime_to_us(ktime_sub(time, gpu->last_sample.time));

 gpu->totaltime += elapsed;
 if (gpu->last_sample.active)
  gpu->activetime += elapsed;

 gpu->last_sample.active = msm_gpu_active(gpu);
 gpu->last_sample.time = time;

out:
 spin_unlock_irqrestore(&gpu->perf_lock, flags);
}
