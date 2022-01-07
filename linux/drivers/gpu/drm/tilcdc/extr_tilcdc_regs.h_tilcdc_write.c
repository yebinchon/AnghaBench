
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tilcdc_drm_private {scalar_t__ mmio; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void tilcdc_write(struct drm_device *dev, u32 reg, u32 data)
{
 struct tilcdc_drm_private *priv = dev->dev_private;
 iowrite32(data, priv->mmio + reg);
}
