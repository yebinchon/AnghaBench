
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_private {scalar_t__ map_mode; struct drm_device* dev; } ;
struct drm_device {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRM_INFO (char*) ;
 int dma_set_mask_and_coherent (int ,int ) ;
 scalar_t__ vmw_dma_phys ;
 scalar_t__ vmw_restrict_dma_mask ;

__attribute__((used)) static int vmw_dma_masks(struct vmw_private *dev_priv)
{
 struct drm_device *dev = dev_priv->dev;
 int ret = 0;

 ret = dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(64));
 if (dev_priv->map_mode != vmw_dma_phys &&
     (sizeof(unsigned long) == 4 || vmw_restrict_dma_mask)) {
  DRM_INFO("Restricting DMA addresses to 44 bits.\n");
  return dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(44));
 }

 return ret;
}
