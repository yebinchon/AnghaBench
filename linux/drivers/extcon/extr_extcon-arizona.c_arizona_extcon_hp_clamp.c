
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_extcon_info {struct arizona* arizona; } ;
struct arizona {int type; int hpdet_clamp; unsigned int hp_ena; int dapm; int dev; int regmap; } ;


 unsigned int ARIZONA_HP1L_FLWR ;
 unsigned int ARIZONA_HP1L_SHRTI ;
 unsigned int ARIZONA_HP1L_SHRTO ;
 unsigned int ARIZONA_HP1_TST_CAP_SEL_MASK ;
 int ARIZONA_HP_CTRL_1L ;
 int ARIZONA_HP_CTRL_1R ;
 int ARIZONA_HP_TEST_CTRL_1 ;
 unsigned int ARIZONA_OUT1L_ENA ;
 unsigned int ARIZONA_OUT1R_ENA ;
 int ARIZONA_OUTPUT_ENABLES_1 ;
 unsigned int ARIZONA_RMV_SHRT_HP1L ;
 unsigned int ARIZONA_TST_CAP_CLAMP ;
 unsigned int ARIZONA_TST_CAP_DEFAULT ;




 int dev_warn (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int snd_soc_dapm_mutex_lock (int ) ;
 int snd_soc_dapm_mutex_unlock (int ) ;

__attribute__((used)) static void arizona_extcon_hp_clamp(struct arizona_extcon_info *info,
        bool clamp)
{
 struct arizona *arizona = info->arizona;
 unsigned int mask = 0, val = 0;
 unsigned int cap_sel = 0;
 int ret;

 switch (arizona->type) {
 case 128:
 case 131:
  mask = 0;
  break;
 case 130:
 case 129:
  mask = ARIZONA_HP1L_SHRTO | ARIZONA_HP1L_FLWR |
         ARIZONA_HP1L_SHRTI;
  if (clamp) {
   val = ARIZONA_HP1L_SHRTO;
   cap_sel = ARIZONA_TST_CAP_CLAMP;
  } else {
   val = ARIZONA_HP1L_FLWR | ARIZONA_HP1L_SHRTI;
   cap_sel = ARIZONA_TST_CAP_DEFAULT;
  }

  ret = regmap_update_bits(arizona->regmap,
      ARIZONA_HP_TEST_CTRL_1,
      ARIZONA_HP1_TST_CAP_SEL_MASK,
      cap_sel);
  if (ret != 0)
   dev_warn(arizona->dev,
     "Failed to set TST_CAP_SEL: %d\n", ret);
  break;
 default:
  mask = ARIZONA_RMV_SHRT_HP1L;
  if (clamp)
   val = ARIZONA_RMV_SHRT_HP1L;
  break;
 }

 snd_soc_dapm_mutex_lock(arizona->dapm);

 arizona->hpdet_clamp = clamp;


 if (clamp) {
  ret = regmap_update_bits(arizona->regmap,
      ARIZONA_OUTPUT_ENABLES_1,
      ARIZONA_OUT1L_ENA |
      ARIZONA_OUT1R_ENA, 0);
  if (ret != 0)
   dev_warn(arizona->dev,
    "Failed to disable headphone outputs: %d\n",
     ret);
 }

 if (mask) {
  ret = regmap_update_bits(arizona->regmap, ARIZONA_HP_CTRL_1L,
      mask, val);
  if (ret != 0)
   dev_warn(arizona->dev, "Failed to do clamp: %d\n",
     ret);

  ret = regmap_update_bits(arizona->regmap, ARIZONA_HP_CTRL_1R,
      mask, val);
  if (ret != 0)
   dev_warn(arizona->dev, "Failed to do clamp: %d\n",
     ret);
 }


 if (!clamp) {
  ret = regmap_update_bits(arizona->regmap,
      ARIZONA_OUTPUT_ENABLES_1,
      ARIZONA_OUT1L_ENA |
      ARIZONA_OUT1R_ENA, arizona->hp_ena);
  if (ret != 0)
   dev_warn(arizona->dev,
     "Failed to restore headphone outputs: %d\n",
     ret);
 }

 snd_soc_dapm_mutex_unlock(arizona->dapm);
}
