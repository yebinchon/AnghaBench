
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 struct edid* drm_get_edid (struct drm_connector*,struct i2c_adapter*) ;
 int intel_gmbus_force_bit (struct i2c_adapter*,int) ;
 int intel_gmbus_is_forced_bit (struct i2c_adapter*) ;

__attribute__((used)) static struct edid *intel_crt_get_edid(struct drm_connector *connector,
    struct i2c_adapter *i2c)
{
 struct edid *edid;

 edid = drm_get_edid(connector, i2c);

 if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
  DRM_DEBUG_KMS("CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
  intel_gmbus_force_bit(i2c, 1);
  edid = drm_get_edid(connector, i2c);
  intel_gmbus_force_bit(i2c, 0);
 }

 return edid;
}
