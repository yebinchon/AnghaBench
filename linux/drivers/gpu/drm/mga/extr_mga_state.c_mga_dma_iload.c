
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {TYPE_2__* dev_private; struct drm_device_dma* dma; } ;
struct drm_buf {int * dev_private; } ;
struct TYPE_8__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_9__ {size_t idx; int length; int dstorg; } ;
typedef TYPE_3__ drm_mga_iload_t ;
typedef int drm_mga_buf_priv_t ;
struct TYPE_7__ {int dirty; } ;


 int DRM_DEBUG (char*) ;
 int DRM_INFO (char*) ;
 int EBUSY ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ MGA_DMA_DEBUG ;
 int MGA_UPLOAD_CONTEXT ;
 int WRAP_TEST_WITH_RETURN (TYPE_2__*) ;
 int mga_dma_dispatch_iload (struct drm_device*,struct drm_buf*,int ,int ) ;
 scalar_t__ mga_do_wait_for_idle (TYPE_2__*) ;
 int mga_freelist_put (struct drm_device*,struct drm_buf*) ;
 scalar_t__ mga_verify_iload (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int mga_dma_iload(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 drm_mga_private_t *dev_priv = dev->dev_private;
 struct drm_buf *buf;
 drm_mga_buf_priv_t *buf_priv;
 drm_mga_iload_t *iload = data;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);
 if (iload->idx < 0 || iload->idx > dma->buf_count)
  return -EINVAL;

 buf = dma->buflist[iload->idx];
 buf_priv = buf->dev_private;

 if (mga_verify_iload(dev_priv, iload->dstorg, iload->length)) {
  mga_freelist_put(dev, buf);
  return -EINVAL;
 }

 WRAP_TEST_WITH_RETURN(dev_priv);

 mga_dma_dispatch_iload(dev, buf, iload->dstorg, iload->length);



 dev_priv->sarea_priv->dirty |= MGA_UPLOAD_CONTEXT;

 return 0;
}
