
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct adv7511 {int regmap; } ;


 int ADV7511_CSC_UPDATE_MODE ;
 int ADV7511_REG_CSC_LOWER (unsigned int) ;
 int ADV7511_REG_CSC_UPPER (int) ;
 int regmap_update_bits (int ,int ,int,int const) ;
 int regmap_write (int ,int ,int const) ;

__attribute__((used)) static void adv7511_set_colormap(struct adv7511 *adv7511, bool enable,
     const uint16_t *coeff,
     unsigned int scaling_factor)
{
 unsigned int i;

 regmap_update_bits(adv7511->regmap, ADV7511_REG_CSC_UPPER(1),
      ADV7511_CSC_UPDATE_MODE, ADV7511_CSC_UPDATE_MODE);

 if (enable) {
  for (i = 0; i < 12; ++i) {
   regmap_update_bits(adv7511->regmap,
        ADV7511_REG_CSC_UPPER(i),
        0x1f, coeff[i] >> 8);
   regmap_write(adv7511->regmap,
         ADV7511_REG_CSC_LOWER(i),
         coeff[i] & 0xff);
  }
 }

 if (enable)
  regmap_update_bits(adv7511->regmap, ADV7511_REG_CSC_UPPER(0),
       0xe0, 0x80 | (scaling_factor << 5));
 else
  regmap_update_bits(adv7511->regmap, ADV7511_REG_CSC_UPPER(0),
       0x80, 0x00);

 regmap_update_bits(adv7511->regmap, ADV7511_REG_CSC_UPPER(1),
      ADV7511_CSC_UPDATE_MODE, 0);
}
