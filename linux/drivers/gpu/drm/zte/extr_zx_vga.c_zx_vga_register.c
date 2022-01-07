
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int polled; } ;
struct drm_encoder {int possible_crtcs; } ;
struct zx_vga {struct drm_connector connector; struct device* dev; struct drm_encoder encoder; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int DRM_MODE_ENCODER_DAC ;
 int VOU_CRTC_MASK ;
 int drm_connector_attach_encoder (struct drm_connector*,struct drm_encoder*) ;
 int drm_connector_cleanup (struct drm_connector*) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_encoder_cleanup (struct drm_encoder*) ;
 int drm_encoder_helper_add (struct drm_encoder*,int *) ;
 int drm_encoder_init (struct drm_device*,struct drm_encoder*,int *,int ,int *) ;
 int zx_vga_connector_funcs ;
 int zx_vga_connector_helper_funcs ;
 int zx_vga_encoder_funcs ;
 int zx_vga_encoder_helper_funcs ;

__attribute__((used)) static int zx_vga_register(struct drm_device *drm, struct zx_vga *vga)
{
 struct drm_encoder *encoder = &vga->encoder;
 struct drm_connector *connector = &vga->connector;
 struct device *dev = vga->dev;
 int ret;

 encoder->possible_crtcs = VOU_CRTC_MASK;

 ret = drm_encoder_init(drm, encoder, &zx_vga_encoder_funcs,
          DRM_MODE_ENCODER_DAC, ((void*)0));
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init encoder: %d\n", ret);
  return ret;
 };

 drm_encoder_helper_add(encoder, &zx_vga_encoder_helper_funcs);

 vga->connector.polled = DRM_CONNECTOR_POLL_HPD;

 ret = drm_connector_init(drm, connector, &zx_vga_connector_funcs,
     DRM_MODE_CONNECTOR_VGA);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init connector: %d\n", ret);
  goto clean_encoder;
 };

 drm_connector_helper_add(connector, &zx_vga_connector_helper_funcs);

 ret = drm_connector_attach_encoder(connector, encoder);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to attach encoder: %d\n", ret);
  goto clean_connector;
 };

 return 0;

clean_connector:
 drm_connector_cleanup(connector);
clean_encoder:
 drm_encoder_cleanup(encoder);
 return ret;
}
