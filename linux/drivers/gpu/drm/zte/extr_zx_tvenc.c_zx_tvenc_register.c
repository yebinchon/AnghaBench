
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int interlace_allowed; } ;
struct drm_encoder {int possible_crtcs; } ;
struct zx_tvenc {struct drm_connector connector; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;


 int BIT (int) ;
 int DRM_MODE_CONNECTOR_Composite ;
 int DRM_MODE_ENCODER_TVDAC ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int zx_tvenc_connector_funcs ;
 int zx_tvenc_connector_helper_funcs ;
 int zx_tvenc_encoder_funcs ;
 int zx_tvenc_encoder_helper_funcs ;

__attribute__((used)) static int zx_tvenc_register(struct drm_device *drm, struct zx_tvenc *tvenc)
{
 struct drm_encoder *encoder = &tvenc->encoder;
 struct drm_connector *connector = &tvenc->connector;





 encoder->possible_crtcs = BIT(1);

 drm_encoder_init(drm, encoder, &zx_tvenc_encoder_funcs,
    DRM_MODE_ENCODER_TVDAC, ((void*)0));
 drm_encoder_helper_add(encoder, &zx_tvenc_encoder_helper_funcs);

 connector->interlace_allowed = 1;

 drm_connector_init(drm, connector, &zx_tvenc_connector_funcs,
      DRM_MODE_CONNECTOR_Composite);
 drm_connector_helper_add(connector, &zx_tvenc_connector_helper_funcs);

 drm_connector_attach_encoder(connector, encoder);

 return 0;
}
