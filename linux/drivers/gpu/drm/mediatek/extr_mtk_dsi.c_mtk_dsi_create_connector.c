
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dpms; } ;
struct mtk_dsi {TYPE_1__ conn; scalar_t__ panel; int encoder; } ;
struct drm_device {int dummy; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_DSI ;
 int DRM_MODE_DPMS_OFF ;
 int drm_connector_attach_encoder (TYPE_1__*,int *) ;
 int drm_connector_cleanup (TYPE_1__*) ;
 int drm_connector_helper_add (TYPE_1__*,int *) ;
 int drm_connector_init (struct drm_device*,TYPE_1__*,int *,int ) ;
 int drm_panel_attach (scalar_t__,TYPE_1__*) ;
 int mtk_dsi_connector_funcs ;
 int mtk_dsi_connector_helper_funcs ;

__attribute__((used)) static int mtk_dsi_create_connector(struct drm_device *drm, struct mtk_dsi *dsi)
{
 int ret;

 ret = drm_connector_init(drm, &dsi->conn, &mtk_dsi_connector_funcs,
     DRM_MODE_CONNECTOR_DSI);
 if (ret) {
  DRM_ERROR("Failed to connector init to drm\n");
  return ret;
 }

 drm_connector_helper_add(&dsi->conn, &mtk_dsi_connector_helper_funcs);

 dsi->conn.dpms = DRM_MODE_DPMS_OFF;
 drm_connector_attach_encoder(&dsi->conn, &dsi->encoder);

 if (dsi->panel) {
  ret = drm_panel_attach(dsi->panel, &dsi->conn);
  if (ret) {
   DRM_ERROR("Failed to attach panel to drm\n");
   goto err_connector_cleanup;
  }
 }

 return 0;

err_connector_cleanup:
 drm_connector_cleanup(&dsi->conn);
 return ret;
}
