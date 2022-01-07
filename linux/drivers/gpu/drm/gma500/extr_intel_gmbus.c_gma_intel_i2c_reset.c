
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int dummy; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int GMBUS0 ;
 int GMBUS_REG_WRITE (int ,int ) ;

void
gma_intel_i2c_reset(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;
 GMBUS_REG_WRITE(GMBUS0, 0);
}
