
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf_free {int count; int * list; } ;
struct drm_buf {struct drm_file* file_priv; } ;
typedef int idx ;


 int DRIVER_HAVE_DMA ;
 int DRIVER_LEGACY ;
 int DRM_DEBUG (char*,int) ;
 int DRM_ERROR (char*,int,...) ;
 int EFAULT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int array_index_nospec (int,int) ;
 scalar_t__ copy_from_user (int*,int *,int) ;
 int current ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_legacy_free_buffer (struct drm_device*,struct drm_buf*) ;
 int task_pid_nr (int ) ;

int drm_legacy_freebufs(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf_free *request = data;
 int i;
 int idx;
 struct drm_buf *buf;

 if (!drm_core_check_feature(dev, DRIVER_LEGACY))
  return -EOPNOTSUPP;

 if (!drm_core_check_feature(dev, DRIVER_HAVE_DMA))
  return -EOPNOTSUPP;

 if (!dma)
  return -EINVAL;

 DRM_DEBUG("%d\n", request->count);
 for (i = 0; i < request->count; i++) {
  if (copy_from_user(&idx, &request->list[i], sizeof(idx)))
   return -EFAULT;
  if (idx < 0 || idx >= dma->buf_count) {
   DRM_ERROR("Index %d (of %d max)\n",
      idx, dma->buf_count - 1);
   return -EINVAL;
  }
  idx = array_index_nospec(idx, dma->buf_count);
  buf = dma->buflist[idx];
  if (buf->file_priv != file_priv) {
   DRM_ERROR("Process %d freeing buffer not owned\n",
      task_pid_nr(current));
   return -EINVAL;
  }
  drm_legacy_free_buffer(dev, buf);
 }

 return 0;
}
