
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_connector {int * edid; } ;
struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,int *) ;
 int drm_connector_update_edid_property (struct drm_connector*,int *) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;

__attribute__((used)) static int radeon_ddc_get_modes(struct drm_connector *connector)
{
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 int ret;

 if (radeon_connector->edid) {
  drm_connector_update_edid_property(connector, radeon_connector->edid);
  ret = drm_add_edid_modes(connector, radeon_connector->edid);
  return ret;
 }
 drm_connector_update_edid_property(connector, ((void*)0));
 return 0;
}
