
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_override_edid (struct drm_connector*) ;
 int kfree (struct edid*) ;

int drm_add_override_edid_modes(struct drm_connector *connector)
{
 struct edid *override;
 int num_modes = 0;

 override = drm_get_override_edid(connector);
 if (override) {
  drm_connector_update_edid_property(connector, override);
  num_modes = drm_add_edid_modes(connector, override);
  kfree(override);

  DRM_DEBUG_KMS("[CONNECTOR:%d:%s] adding %d modes via fallback override/firmware EDID\n",
         connector->base.id, connector->name, num_modes);
 }

 return num_modes;
}
