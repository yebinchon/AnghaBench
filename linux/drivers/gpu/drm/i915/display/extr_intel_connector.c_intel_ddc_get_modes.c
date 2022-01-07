
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 int intel_connector_update_modes (struct drm_connector*,struct edid*) ;
 int kfree (struct edid*) ;

int intel_ddc_get_modes(struct drm_connector *connector,
   struct i2c_adapter *adapter)
{
 struct edid *edid;
 int ret;

 edid = drm_get_edid(connector, adapter);
 if (!edid)
  return 0;

 ret = intel_connector_update_modes(connector, edid);
 kfree(edid);

 return ret;
}
