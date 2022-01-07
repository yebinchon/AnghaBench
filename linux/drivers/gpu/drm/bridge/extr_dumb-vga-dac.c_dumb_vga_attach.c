
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumb_vga {int connector; int ddc; } ;
struct drm_bridge {int encoder; int dev; } ;


 int DRM_ERROR (char*) ;
 int DRM_MODE_CONNECTOR_VGA ;
 int ENODEV ;
 struct dumb_vga* drm_bridge_to_dumb_vga (struct drm_bridge*) ;
 int drm_connector_attach_encoder (int *,int ) ;
 int drm_connector_helper_add (int *,int *) ;
 int drm_connector_init_with_ddc (int ,int *,int *,int ,int ) ;
 int dumb_vga_con_funcs ;
 int dumb_vga_con_helper_funcs ;

__attribute__((used)) static int dumb_vga_attach(struct drm_bridge *bridge)
{
 struct dumb_vga *vga = drm_bridge_to_dumb_vga(bridge);
 int ret;

 if (!bridge->encoder) {
  DRM_ERROR("Missing encoder\n");
  return -ENODEV;
 }

 drm_connector_helper_add(&vga->connector,
     &dumb_vga_con_helper_funcs);
 ret = drm_connector_init_with_ddc(bridge->dev, &vga->connector,
       &dumb_vga_con_funcs,
       DRM_MODE_CONNECTOR_VGA,
       vga->ddc);
 if (ret) {
  DRM_ERROR("Failed to initialize connector\n");
  return ret;
 }

 drm_connector_attach_encoder(&vga->connector,
       bridge->encoder);

 return 0;
}
