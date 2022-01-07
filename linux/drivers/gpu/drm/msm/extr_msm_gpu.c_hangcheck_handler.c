
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timer_list {int dummy; } ;
struct msm_ringbuffer {scalar_t__ hangcheck_fence; scalar_t__ seqno; scalar_t__ id; TYPE_2__* memptrs; } ;
struct msm_gpu {int retire_work; int recover_work; int name; TYPE_1__* funcs; struct drm_device* dev; } ;
struct msm_drm_private {int wq; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;
struct TYPE_4__ {scalar_t__ fence; } ;
struct TYPE_3__ {struct msm_ringbuffer* (* active_ring ) (struct msm_gpu*) ;} ;


 int DRM_DEV_ERROR (int ,char*,int ,scalar_t__) ;
 struct msm_gpu* from_timer (int ,struct timer_list*,int ) ;
 struct msm_gpu* gpu ;
 int hangcheck_timer ;
 int hangcheck_timer_reset (struct msm_gpu*) ;
 int queue_work (int ,int *) ;
 struct msm_ringbuffer* stub1 (struct msm_gpu*) ;

__attribute__((used)) static void hangcheck_handler(struct timer_list *t)
{
 struct msm_gpu *gpu = from_timer(gpu, t, hangcheck_timer);
 struct drm_device *dev = gpu->dev;
 struct msm_drm_private *priv = dev->dev_private;
 struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);
 uint32_t fence = ring->memptrs->fence;

 if (fence != ring->hangcheck_fence) {

  ring->hangcheck_fence = fence;
 } else if (fence < ring->seqno) {

  ring->hangcheck_fence = fence;
  DRM_DEV_ERROR(dev->dev, "%s: hangcheck detected gpu lockup rb %d!\n",
    gpu->name, ring->id);
  DRM_DEV_ERROR(dev->dev, "%s:     completed fence: %u\n",
    gpu->name, fence);
  DRM_DEV_ERROR(dev->dev, "%s:     submitted fence: %u\n",
    gpu->name, ring->seqno);

  queue_work(priv->wq, &gpu->recover_work);
 }


 if (ring->seqno > ring->hangcheck_fence)
  hangcheck_timer_reset(gpu);


 queue_work(priv->wq, &gpu->retire_work);
}
