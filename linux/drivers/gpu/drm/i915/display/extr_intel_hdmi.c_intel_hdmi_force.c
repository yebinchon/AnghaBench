
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct drm_connector {scalar_t__ status; int name; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 scalar_t__ connector_status_connected ;
 int intel_hdmi_set_edid (struct drm_connector*) ;
 int intel_hdmi_unset_edid (struct drm_connector*) ;

__attribute__((used)) static void
intel_hdmi_force(struct drm_connector *connector)
{
 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);

 intel_hdmi_unset_edid(connector);

 if (connector->status != connector_status_connected)
  return;

 intel_hdmi_set_edid(connector);
}
