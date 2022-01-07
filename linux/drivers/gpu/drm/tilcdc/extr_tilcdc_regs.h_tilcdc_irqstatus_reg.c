
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tilcdc_drm_private {int rev; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;


 int LCDC_MASKED_STAT_REG ;
 int LCDC_STAT_REG ;

__attribute__((used)) static inline u32 tilcdc_irqstatus_reg(struct drm_device *dev)
{
 struct tilcdc_drm_private *priv = dev->dev_private;
 return (priv->rev == 2) ? LCDC_MASKED_STAT_REG : LCDC_STAT_REG;
}
