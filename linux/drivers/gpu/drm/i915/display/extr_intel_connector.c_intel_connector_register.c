
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_connector {int dummy; } ;
struct drm_connector {int dev; } ;


 int EFAULT ;
 scalar_t__ i915_inject_probe_failure (int ) ;
 int intel_backlight_device_register (struct intel_connector*) ;
 int intel_backlight_device_unregister (struct intel_connector*) ;
 int to_i915 (int ) ;
 struct intel_connector* to_intel_connector (struct drm_connector*) ;

int intel_connector_register(struct drm_connector *connector)
{
 struct intel_connector *intel_connector = to_intel_connector(connector);
 int ret;

 ret = intel_backlight_device_register(intel_connector);
 if (ret)
  goto err;

 if (i915_inject_probe_failure(to_i915(connector->dev))) {
  ret = -EFAULT;
  goto err_backlight;
 }

 return 0;

err_backlight:
 intel_backlight_device_unregister(intel_connector);
err:
 return ret;
}
