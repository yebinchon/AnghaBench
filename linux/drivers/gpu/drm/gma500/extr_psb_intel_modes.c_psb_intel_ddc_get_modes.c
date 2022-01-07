
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 int kfree (struct edid*) ;

int psb_intel_ddc_get_modes(struct drm_connector *connector,
       struct i2c_adapter *adapter)
{
 struct edid *edid;
 int ret = 0;

 edid = drm_get_edid(connector, adapter);
 if (edid) {
  drm_connector_update_edid_property(connector, edid);
  ret = drm_add_edid_modes(connector, edid);
  kfree(edid);
 }
 return ret;
}
