
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tve200_drm_dev_private {int clk; scalar_t__ regs; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {struct tve200_drm_dev_private* dev_private; } ;


 scalar_t__ TVE200_CTRL ;
 int clk_disable_unprepare (int ) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void tve200_display_disable(struct drm_simple_display_pipe *pipe)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct tve200_drm_dev_private *priv = drm->dev_private;

 drm_crtc_vblank_off(crtc);


 writel(0, priv->regs + TVE200_CTRL);

 clk_disable_unprepare(priv->clk);
}
