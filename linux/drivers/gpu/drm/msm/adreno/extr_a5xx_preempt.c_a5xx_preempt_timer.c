
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct msm_gpu {int recover_work; int name; struct drm_device* dev; } ;
struct msm_drm_private {int wq; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {struct msm_gpu base; } ;
struct a5xx_gpu {TYPE_1__ base; } ;


 int DRM_DEV_ERROR (int ,char*,int ) ;
 int PREEMPT_FAULTED ;
 int PREEMPT_TRIGGERED ;
 struct a5xx_gpu* a5xx_gpu ;
 struct a5xx_gpu* from_timer (int ,struct timer_list*,int ) ;
 int preempt_timer ;
 int queue_work (int ,int *) ;
 int try_preempt_state (struct a5xx_gpu*,int ,int ) ;

__attribute__((used)) static void a5xx_preempt_timer(struct timer_list *t)
{
 struct a5xx_gpu *a5xx_gpu = from_timer(a5xx_gpu, t, preempt_timer);
 struct msm_gpu *gpu = &a5xx_gpu->base.base;
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;

 if (!try_preempt_state(a5xx_gpu, PREEMPT_TRIGGERED, PREEMPT_FAULTED))
  return;

 DRM_DEV_ERROR(dev->dev, "%s: preemption timed out\n", gpu->name);
 queue_work(priv->wq, &gpu->recover_work);
}
