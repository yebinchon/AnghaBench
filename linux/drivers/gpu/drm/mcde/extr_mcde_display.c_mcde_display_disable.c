
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde {scalar_t__ te_sync; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_device {int dev; struct mcde* dev_private; } ;


 int MCDE_FIFO_A ;
 int dev_info (int ,char*) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int mcde_disable_fifo (struct mcde*,int ,int) ;

__attribute__((used)) static void mcde_display_disable(struct drm_simple_display_pipe *pipe)
{
 struct drm_crtc *crtc = &pipe->crtc;
 struct drm_device *drm = crtc->dev;
 struct mcde *mcde = drm->dev_private;

 if (mcde->te_sync)
  drm_crtc_vblank_off(crtc);


 mcde_disable_fifo(mcde, MCDE_FIFO_A, 1);

 dev_info(drm->dev, "MCDE display is disabled\n");
}
