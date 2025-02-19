
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tve200_drm_dev_private {scalar_t__ regs; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {struct tve200_drm_dev_private* dev_private; } ;


 scalar_t__ TVE200_INT_EN ;
 int TVE200_INT_V_STATUS ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tve200_display_enable_vblank(struct drm_simple_display_pipe *pipe)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct tve200_drm_dev_private *priv = drm->dev_private;

 writel(TVE200_INT_V_STATUS, priv->regs + TVE200_INT_EN);
 return 0;
}
