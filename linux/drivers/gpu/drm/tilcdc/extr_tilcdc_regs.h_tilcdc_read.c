
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tilcdc_drm_private {scalar_t__ mmio; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 tilcdc_read(struct drm_device *dev, u32 reg)
{
 struct tilcdc_drm_private *priv = dev->dev_private;
 return ioread32(priv->mmio + reg);
}
