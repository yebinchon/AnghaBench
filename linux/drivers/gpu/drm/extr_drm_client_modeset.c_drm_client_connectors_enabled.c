
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ non_desktop; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {TYPE_2__ display_info; TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,char*) ;
 int drm_connector_enabled (struct drm_connector*,int) ;

__attribute__((used)) static void drm_client_connectors_enabled(struct drm_connector **connectors,
       unsigned int connector_count,
       bool *enabled)
{
 bool any_enabled = 0;
 struct drm_connector *connector;
 int i = 0;

 for (i = 0; i < connector_count; i++) {
  connector = connectors[i];
  enabled[i] = drm_connector_enabled(connector, 1);
  DRM_DEBUG_KMS("connector %d enabled? %s\n", connector->base.id,
         connector->display_info.non_desktop ? "non desktop" : enabled[i] ? "yes" : "no");

  any_enabled |= enabled[i];
 }

 if (any_enabled)
  return;

 for (i = 0; i < connector_count; i++)
  enabled[i] = drm_connector_enabled(connectors[i], 0);
}
