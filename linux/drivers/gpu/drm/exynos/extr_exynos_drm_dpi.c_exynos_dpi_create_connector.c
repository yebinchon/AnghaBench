
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int polled; } ;
struct exynos_dpi {int dev; struct drm_connector connector; } ;
struct drm_encoder {int dev; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 struct exynos_dpi* encoder_to_dpi (struct drm_encoder*) ;
 int exynos_dpi_connector_funcs ;
 int exynos_dpi_connector_helper_funcs ;

__attribute__((used)) static int exynos_dpi_create_connector(struct drm_encoder *encoder)
{
 struct exynos_dpi *ctx = encoder_to_dpi(encoder);
 struct drm_connector *connector = &ctx->connector;
 int ret;

 connector->polled = DRM_CONNECTOR_POLL_HPD;

 ret = drm_connector_init(encoder->dev, connector,
     &exynos_dpi_connector_funcs,
     DRM_MODE_CONNECTOR_VGA);
 if (ret) {
  DRM_DEV_ERROR(ctx->dev,
         "failed to initialize connector with drm\n");
  return ret;
 }

 drm_connector_helper_add(connector, &exynos_dpi_connector_helper_funcs);
 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
