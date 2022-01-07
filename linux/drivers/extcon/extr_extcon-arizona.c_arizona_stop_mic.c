
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_extcon_info {int dev; int micvdd; scalar_t__ micd_reva; struct arizona* arizona; } ;
struct arizona {int dev; int regmap; struct snd_soc_dapm_context* dapm; } ;


 int ARIZONA_MICD_ENA ;
 int ARIZONA_MIC_DETECT_1 ;
 char* arizona_extcon_get_micbias (struct arizona_extcon_info*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,char const*,int) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits_check (int ,int ,int ,int ,int*) ;
 int regmap_write (int ,int,int) ;
 int regulator_allow_bypass (int ,int) ;
 int regulator_disable (int ) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char const*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void arizona_stop_mic(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 const char *widget = arizona_extcon_get_micbias(info);
 struct snd_soc_dapm_context *dapm = arizona->dapm;
 struct snd_soc_component *component = snd_soc_dapm_to_component(dapm);
 bool change = 0;
 int ret;

 ret = regmap_update_bits_check(arizona->regmap, ARIZONA_MIC_DETECT_1,
           ARIZONA_MICD_ENA, 0,
           &change);
 if (ret < 0)
  dev_err(arizona->dev, "Failed to disable micd: %d\n", ret);

 ret = snd_soc_component_disable_pin(component, widget);
 if (ret != 0)
  dev_warn(arizona->dev,
    "Failed to disable %s: %d\n",
    widget, ret);

 snd_soc_dapm_sync(dapm);

 if (info->micd_reva) {
  regmap_write(arizona->regmap, 0x80, 0x3);
  regmap_write(arizona->regmap, 0x294, 2);
  regmap_write(arizona->regmap, 0x80, 0x0);
 }

 ret = regulator_allow_bypass(info->micvdd, 1);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to bypass MICVDD: %d\n",
   ret);
 }

 if (change) {
  regulator_disable(info->micvdd);
  pm_runtime_mark_last_busy(info->dev);
  pm_runtime_put_autosuspend(info->dev);
 }
}
