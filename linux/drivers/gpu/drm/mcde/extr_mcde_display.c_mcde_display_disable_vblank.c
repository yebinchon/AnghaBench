
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {scalar_t__ regs; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {struct mcde* dev_private; } ;


 scalar_t__ MCDE_IMSCPP ;
 scalar_t__ MCDE_RISPP ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mcde_display_disable_vblank(struct drm_simple_display_pipe *pipe)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct mcde *mcde = drm->dev_private;


 writel(0, mcde->regs + MCDE_IMSCPP);

 writel(0xFFFFFFFF, mcde->regs + MCDE_RISPP);
}
