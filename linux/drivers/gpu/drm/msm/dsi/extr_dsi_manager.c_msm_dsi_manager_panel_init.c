
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct msm_kms {TYPE_3__* funcs; } ;
struct msm_dsi {struct drm_panel* panel; int encoder; int id; int host; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_panel {int dummy; } ;
struct drm_connector {TYPE_2__* dev; int base; } ;
struct TYPE_6__ {int (* set_split_display ) (struct msm_kms*,int ,int ,int ) ;} ;
struct TYPE_4__ {int tile_property; } ;
struct TYPE_5__ {TYPE_1__ mode_config; struct msm_drm_private* dev_private; } ;


 int DRM_ERROR (char*,int ,int) ;
 scalar_t__ IS_DUAL_DSI () ;
 scalar_t__ IS_ERR (struct drm_panel*) ;
 int IS_MASTER_DSI_LINK (int ) ;
 int PTR_ERR (struct drm_panel*) ;
 int drm_object_attach_property (int *,int ,int ) ;
 struct msm_dsi* dsi_mgr_get_dsi (int ) ;
 struct msm_dsi* dsi_mgr_get_other_dsi (int ) ;
 int dsi_mgr_is_cmd_mode (struct msm_dsi*) ;
 struct drm_panel* msm_dsi_host_get_panel (int ) ;
 int stub1 (struct msm_kms*,int ,int ,int ) ;

__attribute__((used)) static int msm_dsi_manager_panel_init(struct drm_connector *conn, u8 id)
{
 struct msm_drm_private *priv = conn->dev->dev_private;
 struct msm_kms *kms = priv->kms;
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct msm_dsi *other_dsi = dsi_mgr_get_other_dsi(id);
 struct msm_dsi *master_dsi, *slave_dsi;
 struct drm_panel *panel;

 if (IS_DUAL_DSI() && !IS_MASTER_DSI_LINK(id)) {
  master_dsi = other_dsi;
  slave_dsi = msm_dsi;
 } else {
  master_dsi = msm_dsi;
  slave_dsi = other_dsi;
 }






 panel = msm_dsi_host_get_panel(master_dsi->host);
 if (IS_ERR(panel)) {
  DRM_ERROR("Could not find panel for %u (%ld)\n", msm_dsi->id,
     PTR_ERR(panel));
  return PTR_ERR(panel);
 }

 if (!panel || !IS_DUAL_DSI())
  goto out;

 drm_object_attach_property(&conn->base,
       conn->dev->mode_config.tile_property, 0);





 if (other_dsi && other_dsi->panel && kms->funcs->set_split_display) {
  kms->funcs->set_split_display(kms, master_dsi->encoder,
           slave_dsi->encoder,
           dsi_mgr_is_cmd_mode(msm_dsi));
 }

out:
 msm_dsi->panel = panel;
 return 0;
}
