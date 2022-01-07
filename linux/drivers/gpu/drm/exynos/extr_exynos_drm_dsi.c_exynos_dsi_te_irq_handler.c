
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int crtc; } ;
struct exynos_dsi {int state; struct drm_encoder encoder; } ;
typedef int irqreturn_t ;


 int DSIM_STATE_VIDOUT_AVAILABLE ;
 int IRQ_HANDLED ;
 int exynos_drm_crtc_te_handler (int ) ;

__attribute__((used)) static irqreturn_t exynos_dsi_te_irq_handler(int irq, void *dev_id)
{
 struct exynos_dsi *dsi = (struct exynos_dsi *)dev_id;
 struct drm_encoder *encoder = &dsi->encoder;

 if (dsi->state & DSIM_STATE_VIDOUT_AVAILABLE)
  exynos_drm_crtc_te_handler(encoder->crtc);

 return IRQ_HANDLED;
}
