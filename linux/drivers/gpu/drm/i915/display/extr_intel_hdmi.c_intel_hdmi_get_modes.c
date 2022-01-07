
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct edid* detect_edid; } ;


 int intel_connector_update_modes (struct drm_connector*,struct edid*) ;
 TYPE_1__* to_intel_connector (struct drm_connector*) ;

__attribute__((used)) static int intel_hdmi_get_modes(struct drm_connector *connector)
{
 struct edid *edid;

 edid = to_intel_connector(connector)->detect_edid;
 if (edid == ((void*)0))
  return 0;

 return intel_connector_update_modes(connector, edid);
}
