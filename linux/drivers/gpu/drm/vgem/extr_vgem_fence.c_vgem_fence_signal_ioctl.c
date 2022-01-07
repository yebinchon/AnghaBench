
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vgem_file {int fence_mutex; int fence_idr; } ;
struct drm_vgem_fence_signal {int fence; scalar_t__ flags; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;


 int EINVAL ;
 int ENOENT ;
 int ETIMEDOUT ;
 scalar_t__ IS_ERR (struct dma_fence*) ;
 int PTR_ERR (struct dma_fence*) ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 struct dma_fence* idr_replace (int *,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int vgem_fence_signal_ioctl(struct drm_device *dev,
       void *data,
       struct drm_file *file)
{
 struct vgem_file *vfile = file->driver_priv;
 struct drm_vgem_fence_signal *arg = data;
 struct dma_fence *fence;
 int ret = 0;

 if (arg->flags)
  return -EINVAL;

 mutex_lock(&vfile->fence_mutex);
 fence = idr_replace(&vfile->fence_idr, ((void*)0), arg->fence);
 mutex_unlock(&vfile->fence_mutex);
 if (!fence)
  return -ENOENT;
 if (IS_ERR(fence))
  return PTR_ERR(fence);

 if (dma_fence_is_signaled(fence))
  ret = -ETIMEDOUT;

 dma_fence_signal(fence);
 dma_fence_put(fence);
 return ret;
}
