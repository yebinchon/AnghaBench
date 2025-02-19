
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct edid* edid; struct i2c_client* stdp2690_i2c; } ;


 int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 TYPE_1__* ge_b850v3_lvds_ptr ;
 int kfree (struct edid*) ;
 scalar_t__ stdp2690_get_edid (struct i2c_client*) ;

__attribute__((used)) static int ge_b850v3_lvds_get_modes(struct drm_connector *connector)
{
 struct i2c_client *client;
 int num_modes = 0;

 client = ge_b850v3_lvds_ptr->stdp2690_i2c;

 kfree(ge_b850v3_lvds_ptr->edid);
 ge_b850v3_lvds_ptr->edid = (struct edid *)stdp2690_get_edid(client);

 if (ge_b850v3_lvds_ptr->edid) {
  drm_connector_update_edid_property(connector,
            ge_b850v3_lvds_ptr->edid);
  num_modes = drm_add_edid_modes(connector,
            ge_b850v3_lvds_ptr->edid);
 }

 return num_modes;
}
