
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arizona_extcon_info {int dev; int micvdd; scalar_t__ detecting; scalar_t__ micd_reva; struct arizona* arizona; } ;
struct TYPE_2__ {scalar_t__ micd_software_compare; } ;
struct arizona {int dev; int regmap; TYPE_1__ pdata; } ;


 unsigned int ARIZONA_ACCDET_MODE_ADC ;
 int ARIZONA_ACCDET_MODE_MASK ;
 unsigned int ARIZONA_ACCDET_MODE_MIC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_MICD_ENA ;
 int ARIZONA_MIC_DETECT_1 ;
 int arizona_extcon_pulse_micbias (struct arizona_extcon_info*) ;
 int dev_err (int ,char*,int) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int regmap_update_bits_check (int ,int ,int ,int ,int*) ;
 int regmap_write (int ,int,int) ;
 int regulator_allow_bypass (int ,int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void arizona_start_mic(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 bool change;
 int ret;
 unsigned int mode;


 pm_runtime_get(info->dev);

 if (info->detecting) {
  ret = regulator_allow_bypass(info->micvdd, 0);
  if (ret != 0) {
   dev_err(arizona->dev,
    "Failed to regulate MICVDD: %d\n",
    ret);
  }
 }

 ret = regulator_enable(info->micvdd);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to enable MICVDD: %d\n",
   ret);
 }

 if (info->micd_reva) {
  regmap_write(arizona->regmap, 0x80, 0x3);
  regmap_write(arizona->regmap, 0x294, 0);
  regmap_write(arizona->regmap, 0x80, 0x0);
 }

 if (info->detecting && arizona->pdata.micd_software_compare)
  mode = ARIZONA_ACCDET_MODE_ADC;
 else
  mode = ARIZONA_ACCDET_MODE_MIC;

 regmap_update_bits(arizona->regmap,
      ARIZONA_ACCESSORY_DETECT_MODE_1,
      ARIZONA_ACCDET_MODE_MASK, mode);

 arizona_extcon_pulse_micbias(info);

 ret = regmap_update_bits_check(arizona->regmap, ARIZONA_MIC_DETECT_1,
           ARIZONA_MICD_ENA, ARIZONA_MICD_ENA,
           &change);
 if (ret < 0) {
  dev_err(arizona->dev, "Failed to enable micd: %d\n", ret);
 } else if (!change) {
  regulator_disable(info->micvdd);
  pm_runtime_put_autosuspend(info->dev);
 }
}
