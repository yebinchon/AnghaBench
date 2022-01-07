
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tfp410_connector {TYPE_1__* mod; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {int i2c; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,int ) ;
 int kfree (struct edid*) ;
 struct tfp410_connector* to_tfp410_connector (struct drm_connector*) ;

__attribute__((used)) static int tfp410_connector_get_modes(struct drm_connector *connector)
{
 struct tfp410_connector *tfp410_connector = to_tfp410_connector(connector);
 struct edid *edid;
 int ret = 0;

 edid = drm_get_edid(connector, tfp410_connector->mod->i2c);

 drm_connector_update_edid_property(connector, edid);

 if (edid) {
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }

 return ret;
}
