
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tfp410_connector {TYPE_1__* mod; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int i2c; } ;


 int connector_status_connected ;
 int connector_status_unknown ;
 scalar_t__ drm_probe_ddc (int ) ;
 struct tfp410_connector* to_tfp410_connector (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status tfp410_connector_detect(
  struct drm_connector *connector,
  bool force)
{
 struct tfp410_connector *tfp410_connector = to_tfp410_connector(connector);

 if (drm_probe_ddc(tfp410_connector->mod->i2c))
  return connector_status_connected;

 return connector_status_unknown;
}
