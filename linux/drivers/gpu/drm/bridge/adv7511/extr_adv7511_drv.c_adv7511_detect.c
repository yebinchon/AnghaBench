
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct adv7511 {int status; int regmap; scalar_t__ powered; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int ADV7511_REG_POWER2 ;
 int ADV7511_REG_POWER2_HPD_SRC_BOTH ;
 int ADV7511_REG_POWER2_HPD_SRC_MASK ;
 int ADV7511_REG_STATUS ;
 unsigned int ADV7511_STATUS_HPD ;
 int adv7511_get_modes (struct adv7511*,struct drm_connector*) ;
 int adv7511_hpd (struct adv7511*) ;
 int adv7511_power_on (struct adv7511*) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int regcache_mark_dirty (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static enum drm_connector_status
adv7511_detect(struct adv7511 *adv7511, struct drm_connector *connector)
{
 enum drm_connector_status status;
 unsigned int val;
 bool hpd;
 int ret;

 ret = regmap_read(adv7511->regmap, ADV7511_REG_STATUS, &val);
 if (ret < 0)
  return connector_status_disconnected;

 if (val & ADV7511_STATUS_HPD)
  status = connector_status_connected;
 else
  status = connector_status_disconnected;

 hpd = adv7511_hpd(adv7511);





 if (status == connector_status_connected && hpd && adv7511->powered) {
  regcache_mark_dirty(adv7511->regmap);
  adv7511_power_on(adv7511);
  adv7511_get_modes(adv7511, connector);
  if (adv7511->status == connector_status_connected)
   status = connector_status_disconnected;
 } else {

  regmap_update_bits(adv7511->regmap, ADV7511_REG_POWER2,
       ADV7511_REG_POWER2_HPD_SRC_MASK,
       ADV7511_REG_POWER2_HPD_SRC_BOTH);
 }

 adv7511->status = status;
 return status;
}
