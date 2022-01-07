
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {TYPE_1__* funcs; int status; int polled; } ;
struct exynos_dsi {int dev; struct drm_connector connector; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int fb_helper; int registered; } ;
struct TYPE_2__ {int (* reset ) (struct drm_connector*) ;} ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_CONNECTOR_DSI ;
 int connector_status_disconnected ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_connector_register (struct drm_connector*) ;
 int drm_fb_helper_add_one_connector (int ,struct drm_connector*) ;
 struct exynos_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int exynos_dsi_connector_funcs ;
 int exynos_dsi_connector_helper_funcs ;
 int stub1 (struct drm_connector*) ;

__attribute__((used)) static int exynos_dsi_create_connector(struct drm_encoder *encoder)
{
 struct exynos_dsi *dsi = encoder_to_dsi(encoder);
 struct drm_connector *connector = &dsi->connector;
 struct drm_device *drm = encoder->dev;
 int ret;

 connector->polled = DRM_CONNECTOR_POLL_HPD;

 ret = drm_connector_init(drm, connector, &exynos_dsi_connector_funcs,
     DRM_MODE_CONNECTOR_DSI);
 if (ret) {
  DRM_DEV_ERROR(dsi->dev,
         "Failed to initialize connector with drm\n");
  return ret;
 }

 connector->status = connector_status_disconnected;
 drm_connector_helper_add(connector, &exynos_dsi_connector_helper_funcs);
 drm_connector_attach_encoder(connector, encoder);
 if (!drm->registered)
  return 0;

 connector->funcs->reset(connector);
 drm_fb_helper_add_one_connector(drm->fb_helper, connector);
 drm_connector_register(connector);
 return 0;
}
