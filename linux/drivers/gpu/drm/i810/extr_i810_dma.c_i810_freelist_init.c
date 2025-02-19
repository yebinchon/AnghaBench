
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf {int total; int bus_address; TYPE_2__* dev_private; } ;
struct TYPE_5__ {scalar_t__ hw_status_page; } ;
typedef TYPE_1__ drm_i810_private_t ;
struct TYPE_7__ {int handle; scalar_t__ mtrr; scalar_t__ flags; int type; int size; int offset; } ;
struct TYPE_6__ {int my_use_idx; TYPE_4__ map; int kernel_virtual; int * in_use; } ;
typedef TYPE_2__ drm_i810_buf_priv_t ;


 int EINVAL ;
 int I810_BUF_FREE ;
 int _DRM_AGP ;
 int drm_legacy_ioremap (TYPE_4__*,struct drm_device*) ;

__attribute__((used)) static int i810_freelist_init(struct drm_device *dev, drm_i810_private_t *dev_priv)
{
 struct drm_device_dma *dma = dev->dma;
 int my_idx = 24;
 u32 *hw_status = (u32 *) (dev_priv->hw_status_page + my_idx);
 int i;

 if (dma->buf_count > 1019) {

  return -EINVAL;
 }

 for (i = 0; i < dma->buf_count; i++) {
  struct drm_buf *buf = dma->buflist[i];
  drm_i810_buf_priv_t *buf_priv = buf->dev_private;

  buf_priv->in_use = hw_status++;
  buf_priv->my_use_idx = my_idx;
  my_idx += 4;

  *buf_priv->in_use = I810_BUF_FREE;

  buf_priv->map.offset = buf->bus_address;
  buf_priv->map.size = buf->total;
  buf_priv->map.type = _DRM_AGP;
  buf_priv->map.flags = 0;
  buf_priv->map.mtrr = 0;

  drm_legacy_ioremap(&buf_priv->map, dev);
  buf_priv->kernel_virtual = buf_priv->map.handle;

 }
 return 0;
}
