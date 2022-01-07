
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_r128_private_t ;


 int R128_CRTC_VBLANK_INT_AK ;
 int R128_GEN_INT_CNTL ;
 int R128_GEN_INT_STATUS ;
 int R128_WRITE (int ,int ) ;

void r128_driver_irq_preinstall(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = (drm_r128_private_t *) dev->dev_private;


 R128_WRITE(R128_GEN_INT_CNTL, 0);

 R128_WRITE(R128_GEN_INT_STATUS, R128_CRTC_VBLANK_INT_AK);
}
