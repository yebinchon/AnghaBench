
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arizona_extcon_info {int micd_num_modes; int micd_mode; TYPE_1__* micd_modes; int micd_pol_gpio; struct arizona* arizona; } ;
struct arizona {int dev; int regmap; } ;
struct TYPE_2__ {int bias; int src; int gpio; } ;


 int ARIZONA_ACCDET_SRC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_MICD_BIAS_SRC_MASK ;
 int ARIZONA_MICD_BIAS_SRC_SHIFT ;
 int ARIZONA_MIC_DETECT_1 ;
 int dev_dbg (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void arizona_extcon_set_mode(struct arizona_extcon_info *info, int mode)
{
 struct arizona *arizona = info->arizona;

 mode %= info->micd_num_modes;

 gpiod_set_value_cansleep(info->micd_pol_gpio,
     info->micd_modes[mode].gpio);

 regmap_update_bits(arizona->regmap, ARIZONA_MIC_DETECT_1,
      ARIZONA_MICD_BIAS_SRC_MASK,
      info->micd_modes[mode].bias <<
      ARIZONA_MICD_BIAS_SRC_SHIFT);
 regmap_update_bits(arizona->regmap, ARIZONA_ACCESSORY_DETECT_MODE_1,
      ARIZONA_ACCDET_SRC, info->micd_modes[mode].src);

 info->micd_mode = mode;

 dev_dbg(arizona->dev, "Set jack polarity to %d\n", mode);
}
