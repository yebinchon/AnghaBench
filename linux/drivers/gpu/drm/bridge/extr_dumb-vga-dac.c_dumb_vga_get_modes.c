
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct dumb_vga {int ddc; } ;
struct drm_connector {int dummy; } ;


 int DRM_INFO (char*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_add_modes_noedid (struct drm_connector*,int,int) ;
 struct dumb_vga* drm_connector_to_dumb_vga (struct drm_connector*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int drm_set_preferred_mode (struct drm_connector*,int,int) ;
 int kfree (struct edid*) ;

__attribute__((used)) static int dumb_vga_get_modes(struct drm_connector *connector)
{
 struct dumb_vga *vga = drm_connector_to_dumb_vga(connector);
 struct edid *edid;
 int ret;

 if (!vga->ddc)
  goto fallback;

 edid = drm_get_edid(connector, vga->ddc);
 if (!edid) {
  DRM_INFO("EDID readout failed, falling back to standard modes\n");
  goto fallback;
 }

 drm_connector_update_edid_property(connector, edid);
 ret = drm_add_edid_modes(connector, edid);
 kfree(edid);
 return ret;

fallback:




 ret = drm_add_modes_noedid(connector, 1920, 1200);


 drm_set_preferred_mode(connector, 1024, 768);

 return ret;
}
