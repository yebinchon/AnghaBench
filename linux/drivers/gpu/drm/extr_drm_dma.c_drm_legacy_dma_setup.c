
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dma; int buf_alloc; scalar_t__ buf_use; } ;
struct TYPE_2__ {int * bufs; } ;


 int DRIVER_HAVE_DMA ;
 int DRIVER_LEGACY ;
 int DRM_MAX_ORDER ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 TYPE_1__* kzalloc (int,int ) ;
 int memset (int *,int ,int) ;

int drm_legacy_dma_setup(struct drm_device *dev)
{
 int i;

 if (!drm_core_check_feature(dev, DRIVER_HAVE_DMA) ||
     !drm_core_check_feature(dev, DRIVER_LEGACY))
  return 0;

 dev->buf_use = 0;
 atomic_set(&dev->buf_alloc, 0);

 dev->dma = kzalloc(sizeof(*dev->dma), GFP_KERNEL);
 if (!dev->dma)
  return -ENOMEM;

 for (i = 0; i <= DRM_MAX_ORDER; i++)
  memset(&dev->dma->bufs[i], 0, sizeof(dev->dma->bufs[0]));

 return 0;
}
