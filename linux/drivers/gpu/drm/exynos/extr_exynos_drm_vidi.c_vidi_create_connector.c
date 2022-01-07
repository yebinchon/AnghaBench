
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int polled; } ;
struct vidi_context {int dev; int drm_dev; struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (int ,char*) ;
 int DRM_MODE_CONNECTOR_VIRTUAL ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (int ,struct drm_connector*,int *,int ) ;
 struct vidi_context* encoder_to_vidi (struct drm_encoder*) ;
 int vidi_connector_funcs ;
 int vidi_connector_helper_funcs ;

__attribute__((used)) static int vidi_create_connector(struct drm_encoder *encoder)
{
 struct vidi_context *ctx = encoder_to_vidi(encoder);
 struct drm_connector *connector = &ctx->connector;
 int ret;

 connector->polled = DRM_CONNECTOR_POLL_HPD;

 ret = drm_connector_init(ctx->drm_dev, connector,
   &vidi_connector_funcs, DRM_MODE_CONNECTOR_VIRTUAL);
 if (ret) {
  DRM_DEV_ERROR(ctx->dev,
         "Failed to initialize connector with drm\n");
  return ret;
 }

 drm_connector_helper_add(connector, &vidi_connector_helper_funcs);
 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
