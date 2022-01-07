
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DRM_ERROR (char*) ;
 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 struct i2c_adapter* i2c_get_adapter (int) ;
 scalar_t__ raw_edid ;

__attribute__((used)) static int oaktrail_hdmi_get_modes(struct drm_connector *connector)
{
 struct i2c_adapter *i2c_adap;
 struct edid *edid;
 int ret = 0;






 i2c_adap = i2c_get_adapter(3);
 if (i2c_adap == ((void*)0)) {
  DRM_ERROR("No ddc adapter available!\n");
  edid = (struct edid *)raw_edid;
 } else {
  edid = (struct edid *)raw_edid;

 }

 if (edid) {
  drm_connector_update_edid_property(connector, edid);
  ret = drm_add_edid_modes(connector, edid);
 }
 return ret;
}
