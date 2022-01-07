
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_drm_private {int dispc; TYPE_2__* dispc_ops; TYPE_1__** channels; } ;
struct omap_crtc {int base; int vm; int channel; } ;
struct drm_crtc {int dummy; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_4__ {int (* mgr_set_timings ) (int ,int ,int *) ;} ;
struct TYPE_3__ {struct drm_crtc* crtc; } ;


 int omap_crtc_set_enabled (int *,int) ;
 int stub1 (int ,int ,int *) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static int omap_crtc_dss_enable(struct omap_drm_private *priv,
    enum omap_channel channel)
{
 struct drm_crtc *crtc = priv->channels[channel]->crtc;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);

 priv->dispc_ops->mgr_set_timings(priv->dispc, omap_crtc->channel,
      &omap_crtc->vm);
 omap_crtc_set_enabled(&omap_crtc->base, 1);

 return 0;
}
