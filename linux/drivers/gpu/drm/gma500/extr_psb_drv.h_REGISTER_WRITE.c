
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct drm_psb_private {scalar_t__ vdc_reg; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void REGISTER_WRITE(struct drm_device *dev, uint32_t reg,
      uint32_t val)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 iowrite32((val), dev_priv->vdc_reg + (reg));
}
