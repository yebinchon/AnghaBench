
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {scalar_t__ cec_notifier; } ;


 int cec_notifier_put (scalar_t__) ;
 TYPE_1__* intel_attached_hdmi (struct drm_connector*) ;
 int intel_connector_destroy (struct drm_connector*) ;

__attribute__((used)) static void intel_hdmi_destroy(struct drm_connector *connector)
{
 if (intel_attached_hdmi(connector)->cec_notifier)
  cec_notifier_put(intel_attached_hdmi(connector)->cec_notifier);

 intel_connector_destroy(connector);
}
