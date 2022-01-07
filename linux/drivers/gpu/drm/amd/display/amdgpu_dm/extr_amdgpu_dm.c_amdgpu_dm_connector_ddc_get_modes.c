
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edid {int dummy; } ;
struct drm_connector {int probed_modes; } ;
struct amdgpu_dm_connector {scalar_t__ num_modes; } ;


 int INIT_LIST_HEAD (int *) ;
 int amdgpu_dm_get_native_mode (struct drm_connector*) ;
 scalar_t__ drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_mode_sort (int *) ;
 struct amdgpu_dm_connector* to_amdgpu_dm_connector (struct drm_connector*) ;

__attribute__((used)) static void amdgpu_dm_connector_ddc_get_modes(struct drm_connector *connector,
           struct edid *edid)
{
 struct amdgpu_dm_connector *amdgpu_dm_connector =
   to_amdgpu_dm_connector(connector);

 if (edid) {

  INIT_LIST_HEAD(&connector->probed_modes);
  amdgpu_dm_connector->num_modes =
    drm_add_edid_modes(connector, edid);
  drm_mode_sort(&connector->probed_modes);
  amdgpu_dm_get_native_mode(connector);
 } else {
  amdgpu_dm_connector->num_modes = 0;
 }
}
