
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct hibmc_drm_private* dev_private; } ;


 scalar_t__ HIBMC_RAW_INTERRUPT_EN ;
 int HIBMC_RAW_INTERRUPT_EN_VBLANK (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int hibmc_crtc_enable_vblank(struct drm_crtc *crtc)
{
 struct hibmc_drm_private *priv = crtc->dev->dev_private;

 writel(HIBMC_RAW_INTERRUPT_EN_VBLANK(1),
        priv->mmio + HIBMC_RAW_INTERRUPT_EN);

 return 0;
}
