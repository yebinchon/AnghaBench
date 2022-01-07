
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gma_crtc {int active; } ;
struct drm_psb_private {struct drm_crtc** pipe_to_crtc_mapping; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {TYPE_1__* primary; } ;
struct TYPE_2__ {int * fb; } ;


 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;

__attribute__((used)) static bool cdv_intel_pipe_enabled(struct drm_device *dev, int pipe)
{
 struct drm_crtc *crtc;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc = ((void*)0);

 crtc = dev_priv->pipe_to_crtc_mapping[pipe];
 gma_crtc = to_gma_crtc(crtc);

 if (crtc->primary->fb == ((void*)0) || !gma_crtc->active)
  return 0;
 return 1;
}
