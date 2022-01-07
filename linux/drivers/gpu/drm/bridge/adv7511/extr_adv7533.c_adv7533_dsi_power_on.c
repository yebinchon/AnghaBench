
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int lanes; } ;
struct adv7511 {int regmap_cec; scalar_t__ use_timing_gen; struct mipi_dsi_device* dsi; } ;


 int ARRAY_SIZE (int ) ;
 int adv7511_dsi_config_timing_gen (struct adv7511*) ;
 int adv7533_cec_fixed_registers ;
 int regmap_register_patch (int ,int ,int ) ;
 int regmap_write (int ,int,int) ;

void adv7533_dsi_power_on(struct adv7511 *adv)
{
 struct mipi_dsi_device *dsi = adv->dsi;

 if (adv->use_timing_gen)
  adv7511_dsi_config_timing_gen(adv);


 regmap_write(adv->regmap_cec, 0x1c, dsi->lanes << 4);

 if (adv->use_timing_gen) {

  regmap_write(adv->regmap_cec, 0x27, 0xcb);
  regmap_write(adv->regmap_cec, 0x27, 0x8b);
  regmap_write(adv->regmap_cec, 0x27, 0xcb);
 } else {

  regmap_write(adv->regmap_cec, 0x27, 0x0b);
 }


 regmap_write(adv->regmap_cec, 0x03, 0x89);

 regmap_write(adv->regmap_cec, 0x55, 0x00);

 regmap_register_patch(adv->regmap_cec, adv7533_cec_fixed_registers,
         ARRAY_SIZE(adv7533_cec_fixed_registers));
}
