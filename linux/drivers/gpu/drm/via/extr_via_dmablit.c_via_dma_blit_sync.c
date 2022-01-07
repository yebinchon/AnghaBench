
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ engine; int sync_handle; } ;
typedef TYPE_1__ drm_via_blitsync_t ;


 int EAGAIN ;
 int EINTR ;
 int EINVAL ;
 scalar_t__ VIA_NUM_BLIT_ENGINES ;
 int via_dmablit_sync (struct drm_device*,int ,scalar_t__) ;

int
via_dma_blit_sync(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_blitsync_t *sync = data;
 int err;

 if (sync->engine >= VIA_NUM_BLIT_ENGINES)
  return -EINVAL;

 err = via_dmablit_sync(dev, sync->sync_handle, sync->engine);

 if (-EINTR == err)
  err = -EAGAIN;

 return err;
}
