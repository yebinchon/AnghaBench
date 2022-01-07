
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct arizona_extcon_info {struct arizona* arizona; } ;
struct TYPE_2__ {int micd_force_micbias; } ;
struct arizona {int dev; TYPE_1__ pdata; struct snd_soc_dapm_context* dapm; } ;


 char* arizona_extcon_get_micbias (struct arizona_extcon_info*) ;
 int dev_warn (int ,char*,char const*,int) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char const*) ;
 int snd_soc_component_force_enable_pin (struct snd_soc_component*,char const*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (struct snd_soc_dapm_context*) ;

__attribute__((used)) static void arizona_extcon_pulse_micbias(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 const char *widget = arizona_extcon_get_micbias(info);
 struct snd_soc_dapm_context *dapm = arizona->dapm;
 struct snd_soc_component *component = snd_soc_dapm_to_component(dapm);
 int ret;

 ret = snd_soc_component_force_enable_pin(component, widget);
 if (ret != 0)
  dev_warn(arizona->dev, "Failed to enable %s: %d\n",
    widget, ret);

 snd_soc_dapm_sync(dapm);

 if (!arizona->pdata.micd_force_micbias) {
  ret = snd_soc_component_disable_pin(component, widget);
  if (ret != 0)
   dev_warn(arizona->dev, "Failed to disable %s: %d\n",
     widget, ret);

  snd_soc_dapm_sync(dapm);
 }
}
