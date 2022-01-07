
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {int dummy; } ;
struct drm_connector {int dummy; } ;


 int intel_backlight_device_unregister (struct intel_connector*) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

void intel_connector_unregister(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);

 intel_backlight_device_unregister(intel_connector);
}
