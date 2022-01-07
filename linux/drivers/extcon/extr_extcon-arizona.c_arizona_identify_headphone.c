
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arizona_extcon_info {int hpdet_active; scalar_t__ mic; int edev; int dev; scalar_t__ hpdet_done; struct arizona* arizona; } ;
struct TYPE_2__ {int hpdet_channel; } ;
struct arizona {int dev; int regmap; TYPE_1__ pdata; } ;


 int ARIZONA_ACCDET_MODE_MASK ;
 int ARIZONA_ACCDET_MODE_MIC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_HEADPHONE_DETECT_1 ;
 int ARIZONA_HP_POLL ;
 int EXTCON_JACK_HEADPHONE ;
 int arizona_extcon_hp_clamp (struct arizona_extcon_info*,int) ;
 int arizona_start_mic (struct arizona_extcon_info*) ;
 int arizona_stop_mic (struct arizona_extcon_info*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int pm_runtime_get (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void arizona_identify_headphone(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 int ret;

 if (info->hpdet_done)
  return;

 dev_dbg(arizona->dev, "Starting HPDET\n");


 pm_runtime_get(info->dev);

 info->hpdet_active = 1;

 if (info->mic)
  arizona_stop_mic(info);

 arizona_extcon_hp_clamp(info, 1);

 ret = regmap_update_bits(arizona->regmap,
     ARIZONA_ACCESSORY_DETECT_MODE_1,
     ARIZONA_ACCDET_MODE_MASK,
     arizona->pdata.hpdet_channel);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to set HPDET mode: %d\n", ret);
  goto err;
 }

 ret = regmap_update_bits(arizona->regmap, ARIZONA_HEADPHONE_DETECT_1,
     ARIZONA_HP_POLL, ARIZONA_HP_POLL);
 if (ret != 0) {
  dev_err(arizona->dev, "Can't start HPDETL measurement: %d\n",
   ret);
  goto err;
 }

 return;

err:
 regmap_update_bits(arizona->regmap, ARIZONA_ACCESSORY_DETECT_MODE_1,
      ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);


 ret = extcon_set_state_sync(info->edev, EXTCON_JACK_HEADPHONE, 1);
 if (ret != 0)
  dev_err(arizona->dev, "Failed to report headphone: %d\n", ret);

 if (info->mic)
  arizona_start_mic(info);

 info->hpdet_active = 0;
}
