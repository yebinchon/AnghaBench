
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int intel_connector_unregister (struct drm_connector*) ;
 int intel_hdmi_remove_i2c_symlink (struct drm_connector*) ;

__attribute__((used)) static void intel_hdmi_connector_unregister(struct drm_connector *connector)
{
 intel_hdmi_remove_i2c_symlink(connector);

 intel_connector_unregister(connector);
}
