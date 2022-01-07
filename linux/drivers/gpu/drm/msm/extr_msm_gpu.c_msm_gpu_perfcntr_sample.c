
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct msm_gpu {int perf_lock; scalar_t__ totaltime; scalar_t__ activetime; int perfcntr_active; } ;


 int EINVAL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_hw_cntrs (struct msm_gpu*,scalar_t__,scalar_t__*) ;

int msm_gpu_perfcntr_sample(struct msm_gpu *gpu, uint32_t *activetime,
  uint32_t *totaltime, uint32_t ncntrs, uint32_t *cntrs)
{
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&gpu->perf_lock, flags);

 if (!gpu->perfcntr_active) {
  ret = -EINVAL;
  goto out;
 }

 *activetime = gpu->activetime;
 *totaltime = gpu->totaltime;

 gpu->activetime = gpu->totaltime = 0;

 ret = update_hw_cntrs(gpu, ncntrs, cntrs);

out:
 spin_unlock_irqrestore(&gpu->perf_lock, flags);

 return ret;
}
