
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_overlay_manager_info {int default_color; int trans_enabled; int partial_alpha_enabled; int cpr_enable; } ;
struct omap_drm_private {int dispc; TYPE_1__* dispc_ops; } ;
struct omap_crtc {int channel; } ;
struct drm_crtc {TYPE_2__* dev; } ;
typedef int info ;
struct TYPE_4__ {struct omap_drm_private* dev_private; } ;
struct TYPE_3__ {int (* mgr_setup ) (int ,int ,struct omap_overlay_manager_info*) ;} ;


 int memset (struct omap_overlay_manager_info*,int ,int) ;
 int stub1 (int ,int ,struct omap_overlay_manager_info*) ;
 struct omap_crtc* to_omap_crtc (struct drm_crtc*) ;

__attribute__((used)) static void omap_crtc_write_crtc_properties(struct drm_crtc *crtc)
{
 struct omap_drm_private *priv = crtc->dev->dev_private;
 struct omap_crtc *omap_crtc = to_omap_crtc(crtc);
 struct omap_overlay_manager_info info;

 memset(&info, 0, sizeof(info));

 info.default_color = 0x000000;
 info.trans_enabled = 0;
 info.partial_alpha_enabled = 0;
 info.cpr_enable = 0;

 priv->dispc_ops->mgr_setup(priv->dispc, omap_crtc->channel, &info);
}
