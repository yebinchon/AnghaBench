
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tv_mode {int component_only; } ;
struct intel_tv {scalar_t__ type; } ;
struct drm_connector {TYPE_2__* state; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ tv; } ;


 int ARRAY_SIZE (struct tv_mode*) ;
 scalar_t__ DRM_MODE_CONNECTOR_Component ;
 struct intel_tv* intel_attached_tv (struct drm_connector*) ;
 struct tv_mode* intel_tv_mode_find (TYPE_2__*) ;
 struct tv_mode* tv_modes ;

__attribute__((used)) static void intel_tv_find_better_format(struct drm_connector *connector)
{
 struct intel_tv *intel_tv = intel_attached_tv(connector);
 const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
 int i;


 if (intel_tv->type == DRM_MODE_CONNECTOR_Component)
  return;


 if (!tv_mode->component_only)
  return;

 for (i = 0; i < ARRAY_SIZE(tv_modes); i++) {
  tv_mode = &tv_modes[i];

  if (!tv_mode->component_only)
   break;
 }

 connector->state->tv.mode = i;
}
