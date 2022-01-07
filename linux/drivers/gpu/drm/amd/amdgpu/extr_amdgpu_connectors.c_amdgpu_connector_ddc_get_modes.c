
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct amdgpu_connector {int * edid; } ;


 int drm_add_edid_modes (struct drm_connector*,int *) ;
 int drm_connector_update_edid_property (struct drm_connector*,int *) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;

__attribute__((used)) static int amdgpu_connector_ddc_get_modes(struct drm_connector *connector)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 int ret;

 if (amdgpu_connector->edid) {
  drm_connector_update_edid_property(connector, amdgpu_connector->edid);
  ret = drm_add_edid_modes(connector, amdgpu_connector->edid);
  return ret;
 }
 drm_connector_update_edid_property(connector, ((void*)0));
 return 0;
}
