
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ age; } ;
typedef TYPE_1__ drm_r128_buf_priv_t ;



void r128_freelist_reset(struct drm_device *dev)
{
 struct drm_device_dma *dma = dev->dma;
 int i;

 for (i = 0; i < dma->buf_count; i++) {
  struct drm_buf *buf = dma->buflist[i];
  drm_r128_buf_priv_t *buf_priv = buf->dev_private;
  buf_priv->age = 0;
 }
}
