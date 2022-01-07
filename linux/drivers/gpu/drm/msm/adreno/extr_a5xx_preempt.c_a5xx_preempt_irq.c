
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msm_gpu {int recover_work; int name; struct drm_device* dev; } ;
struct msm_drm_private {int wq; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int * cur_ring; int * next_ring; int preempt_timer; } ;


 int DRM_DEV_ERROR (int ,char*,int ) ;
 int PREEMPT_FAULTED ;
 int PREEMPT_NONE ;
 int PREEMPT_PENDING ;
 int PREEMPT_TRIGGERED ;
 int REG_A5XX_CP_CONTEXT_SWITCH_CNTL ;
 int del_timer (int *) ;
 int gpu_read (struct msm_gpu*,int ) ;
 int queue_work (int ,int *) ;
 int set_preempt_state (struct a5xx_gpu*,int ) ;
 struct a5xx_gpu* to_a5xx_gpu (struct adreno_gpu*) ;
 struct adreno_gpu* to_adreno_gpu (struct msm_gpu*) ;
 int try_preempt_state (struct a5xx_gpu*,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int update_wptr (struct msm_gpu*,int *) ;

void a5xx_preempt_irq(struct msm_gpu *gpu)
{
 uint32_t status;
 struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
 struct a5xx_gpu *a5xx_gpu = to_a5xx_gpu(adreno_gpu);
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;

 if (!try_preempt_state(a5xx_gpu, PREEMPT_TRIGGERED, PREEMPT_PENDING))
  return;


 del_timer(&a5xx_gpu->preempt_timer);







 status = gpu_read(gpu, REG_A5XX_CP_CONTEXT_SWITCH_CNTL);
 if (unlikely(status)) {
  set_preempt_state(a5xx_gpu, PREEMPT_FAULTED);
  DRM_DEV_ERROR(dev->dev, "%s: Preemption failed to complete\n",
   gpu->name);
  queue_work(priv->wq, &gpu->recover_work);
  return;
 }

 a5xx_gpu->cur_ring = a5xx_gpu->next_ring;
 a5xx_gpu->next_ring = ((void*)0);

 update_wptr(gpu, a5xx_gpu->cur_ring);

 set_preempt_state(a5xx_gpu, PREEMPT_NONE);
}
