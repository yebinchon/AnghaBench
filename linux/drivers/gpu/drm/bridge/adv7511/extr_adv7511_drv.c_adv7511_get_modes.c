
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;
struct adv7511 {int cec_adap; int rgb; int powered; int regmap; TYPE_1__* i2c_edid; } ;
struct TYPE_2__ {int addr; } ;


 int ADV7511_REG_EDID_I2C_ADDR ;
 int __adv7511_power_off (struct adv7511*) ;
 int __adv7511_power_on (struct adv7511*) ;
 int adv7511_get_edid_block ;
 int adv7511_set_config_csc (struct adv7511*,struct drm_connector*,int ,int ) ;
 int cec_s_phys_addr_from_edid (int ,struct edid*) ;
 unsigned int drm_add_edid_modes (struct drm_connector*,struct edid*) ;
 int drm_connector_update_edid_property (struct drm_connector*,struct edid*) ;
 int drm_detect_hdmi_monitor (struct edid*) ;
 struct edid* drm_do_get_edid (struct drm_connector*,int ,struct adv7511*) ;
 int kfree (struct edid*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int adv7511_get_modes(struct adv7511 *adv7511,
        struct drm_connector *connector)
{
 struct edid *edid;
 unsigned int count;


 if (!adv7511->powered) {
  unsigned int edid_i2c_addr =
     (adv7511->i2c_edid->addr << 1);

  __adv7511_power_on(adv7511);


  regmap_write(adv7511->regmap, ADV7511_REG_EDID_I2C_ADDR,
        edid_i2c_addr);
 }

 edid = drm_do_get_edid(connector, adv7511_get_edid_block, adv7511);

 if (!adv7511->powered)
  __adv7511_power_off(adv7511);


 drm_connector_update_edid_property(connector, edid);
 count = drm_add_edid_modes(connector, edid);

 adv7511_set_config_csc(adv7511, connector, adv7511->rgb,
          drm_detect_hdmi_monitor(edid));

 cec_s_phys_addr_from_edid(adv7511->cec_adap, edid);

 kfree(edid);

 return count;
}
