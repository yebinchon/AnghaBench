
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int uint64_t ;
struct videomode {int member_0; } ;
struct omap_drm_private {unsigned int max_bandwidth; int dispc; TYPE_5__* dispc_ops; } ;
struct omap_crtc {int channel; TYPE_4__* pipe; } ;
struct drm_display_mode {int clock; unsigned int hdisplay; unsigned int vdisplay; int htotal; int vtotal; } ;
struct drm_crtc {TYPE_1__* dev; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_10__ {int (* mgr_check_timings ) (int ,int ,struct videomode*) ;} ;
struct TYPE_9__ {TYPE_3__* output; } ;
struct TYPE_8__ {TYPE_2__* next; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {struct omap_drm_private* dev_private; } ;


 int MODE_BAD ;
 int MODE_OK ;
 scalar_t__ OMAP_DISPLAY_TYPE_DSI ;
 unsigned int div_u64 (unsigned int,int) ;
 int drm_display_mode_to_videomode (struct drm_display_mode const*,struct videomode*) ;
 int stub1 (int ,int ,struct videomode*) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static enum drm_mode_status omap_crtc_mode_valid(struct drm_crtc *crtc,
     const struct drm_display_mode *mode)
{
 struct omap_drm_private *priv = crtc->dev->dev_private;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct videomode vm = {0};
 int r;

 drm_display_mode_to_videomode(mode, &vm);






 if (omap_crtc->pipe->output->next == ((void*)0) ||
     omap_crtc->pipe->output->next->type != OMAP_DISPLAY_TYPE_DSI) {
  r = priv->dispc_ops->mgr_check_timings(priv->dispc,
             omap_crtc->channel,
             &vm);
  if (r)
   return r;
 }


 if (priv->max_bandwidth) {
  uint64_t bandwidth = mode->clock * 1000;
  unsigned int bpp = 4;

  bandwidth = bandwidth * mode->hdisplay * mode->vdisplay * bpp;
  bandwidth = div_u64(bandwidth, mode->htotal * mode->vtotal);





  if (priv->max_bandwidth < bandwidth)
   return MODE_BAD;
 }

 return MODE_OK;
}
