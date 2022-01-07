
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int * dev_private; } ;
struct drm_buf {TYPE_2__* dev_private; } ;
typedef int drm_mga_private_t ;
struct TYPE_4__ {size_t idx; int end; int start; scalar_t__ discard; } ;
typedef TYPE_1__ drm_mga_indices_t ;
struct TYPE_5__ {int dispatched; scalar_t__ discard; } ;
typedef TYPE_2__ drm_mga_buf_priv_t ;


 int AGE_BUFFER (TYPE_2__*) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int WRAP_TEST_WITH_RETURN (int *) ;
 int mga_dma_dispatch_indices (struct drm_device*,struct drm_buf*,int ,int ) ;
 int mga_freelist_put (struct drm_device*,struct drm_buf*) ;
 int mga_verify_state (int *) ;

__attribute__((used)) static int mga_dma_indices(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf *buf;
 drm_mga_buf_priv_t *buf_priv;
 drm_mga_indices_t *indices = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (indices->idx < 0 || indices->idx > dma->buf_count)
  return -EINVAL;

 buf = dma->buflist[indices->idx];
 buf_priv = buf->dev_private;

 buf_priv->discard = indices->discard;

 if (!mga_verify_state(dev_priv)) {
  if (indices->discard) {
   if (buf_priv->dispatched == 1)
    AGE_BUFFER(buf_priv);
   buf_priv->dispatched = 0;
   mga_freelist_put(dev, buf);
  }
  return -EINVAL;
 }

 WRAP_TEST_WITH_RETURN(dev_priv);

 mga_dma_dispatch_indices(dev, buf, indices->start, indices->end);

 return 0;
}
