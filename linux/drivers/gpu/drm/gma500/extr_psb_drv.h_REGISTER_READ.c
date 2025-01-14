
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_psb_private {scalar_t__ vdc_reg; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline uint32_t REGISTER_READ(struct drm_device *dev, uint32_t reg)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 return ioread32(dev_priv->vdc_reg + reg);
}
