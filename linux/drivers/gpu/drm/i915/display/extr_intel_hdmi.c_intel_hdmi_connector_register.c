
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int i915_debugfs_connector_add (struct drm_connector*) ;
 int intel_connector_register (struct drm_connector*) ;
 int intel_hdmi_create_i2c_symlink (struct drm_connector*) ;

__attribute__((used)) static int
intel_hdmi_connector_register(struct drm_connector *connector)
{
 int ret;

 ret = intel_connector_register(connector);
 if (ret)
  return ret;

 i915_debugfs_connector_add(connector);

 intel_hdmi_create_i2c_symlink(connector);

 return ret;
}
