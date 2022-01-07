
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pl111_drm_dev_private {int clk; scalar_t__ ctrl; scalar_t__ regs; int (* variant_display_disable ) (struct drm_device*) ;TYPE_1__* variant; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {struct pl111_drm_dev_private* dev_private; } ;
struct TYPE_2__ {int broken_vblank; } ;


 int CNTL_LCDPWR ;
 int clk_disable_unprepare (int ) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int msleep (int) ;
 int readl (scalar_t__) ;
 int stub1 (struct drm_device*) ;
 int writel (int,scalar_t__) ;

void pl111_display_disable(struct drm_simple_display_pipe *pipe)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct pl111_drm_dev_private *priv = drm->dev_private;
 u32 cntl;

 if (!priv->variant->broken_vblank)
  drm_crtc_vblank_off(crtc);


 cntl = readl(priv->regs + priv->ctrl);
 if (cntl & CNTL_LCDPWR) {
  cntl &= ~CNTL_LCDPWR;
  writel(cntl, priv->regs + priv->ctrl);
 }





 msleep(20);

 if (priv->variant_display_disable)
  priv->variant_display_disable(drm);


 writel(0, priv->regs + priv->ctrl);

 clk_disable_unprepare(priv->clk);
}
