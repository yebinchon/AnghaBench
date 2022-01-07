
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_gpu_submitqueue {size_t prio; } ;
struct msm_gpu {TYPE_1__** rb; } ;
struct msm_drm_private {struct msm_gpu* gpu; } ;
struct drm_msm_wait_fence {int fence; int queueid; scalar_t__ pad; int timeout; } ;
struct drm_file {int driver_priv; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef int ktime_t ;
struct TYPE_2__ {int fctx; } ;


 int DRM_ERROR (char*,scalar_t__) ;
 int EINVAL ;
 int ENOENT ;
 struct msm_gpu_submitqueue* msm_submitqueue_get (int ,int ) ;
 int msm_submitqueue_put (struct msm_gpu_submitqueue*) ;
 int msm_wait_fence (int ,int ,int *,int) ;
 int to_ktime (int ) ;

__attribute__((used)) static int msm_ioctl_wait_fence(struct drm_device *dev, void *data,
  struct drm_file *file)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct drm_msm_wait_fence *args = data;
 ktime_t timeout = to_ktime(args->timeout);
 struct msm_gpu_submitqueue *queue;
 struct msm_gpu *gpu = priv->gpu;
 int ret;

 if (args->pad) {
  DRM_ERROR("invalid pad: %08x\n", args->pad);
  return -EINVAL;
 }

 if (!gpu)
  return 0;

 queue = msm_submitqueue_get(file->driver_priv, args->queueid);
 if (!queue)
  return -ENOENT;

 ret = msm_wait_fence(gpu->rb[queue->prio]->fctx, args->fence, &timeout,
  1);

 msm_submitqueue_put(queue);
 return ret;
}
