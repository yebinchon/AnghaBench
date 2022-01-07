
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_dma {int granted_count; int request_count; int * request_sizes; int * request_indices; } ;
struct drm_device {int dummy; } ;
struct drm_buf {int total; int idx; struct drm_file* file_priv; } ;


 int EAGAIN ;
 int EFAULT ;
 scalar_t__ copy_to_user (int *,int *,int) ;
 struct drm_buf* savage_freelist_get (struct drm_device*) ;

__attribute__((used)) static int savage_bci_get_buffers(struct drm_device *dev,
      struct drm_file *file_priv,
      struct drm_dma *d)
{
 struct drm_buf *buf;
 int i;

 for (i = d->granted_count; i < d->request_count; i++) {
  buf = savage_freelist_get(dev);
  if (!buf)
   return -EAGAIN;

  buf->file_priv = file_priv;

  if (copy_to_user(&d->request_indices[i],
         &buf->idx, sizeof(buf->idx)))
   return -EFAULT;
  if (copy_to_user(&d->request_sizes[i],
         &buf->total, sizeof(buf->total)))
   return -EFAULT;

  d->granted_count++;
 }
 return 0;
}
