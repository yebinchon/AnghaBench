
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arizona_extcon_info {int hpdet_active; int edev; TYPE_1__* micd_modes; int dev; struct arizona* arizona; } ;
struct TYPE_4__ {int hpdet_channel; scalar_t__ hpdet_acc_id_line; } ;
struct arizona {int dev; int regmap; TYPE_2__ pdata; } ;
struct TYPE_3__ {int src; } ;


 int ARIZONA_ACCDET_MODE_MASK ;
 int ARIZONA_ACCDET_MODE_MIC ;
 int ARIZONA_ACCDET_SRC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_HEADPHONE_DETECT_1 ;
 int ARIZONA_HP_POLL ;
 int EXTCON_JACK_HEADPHONE ;
 int arizona_extcon_hp_clamp (struct arizona_extcon_info*,int) ;
 int arizona_hpdet_do_id (struct arizona_extcon_info*,int*,int*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int extcon_set_state_sync (int ,int ,int) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void arizona_start_hpdet_acc_id(struct arizona_extcon_info *info)
{
 struct arizona *arizona = info->arizona;
 int hp_reading = 32;
 bool mic;
 int ret;

 dev_dbg(arizona->dev, "Starting identification via HPDET\n");


 pm_runtime_get_sync(info->dev);

 info->hpdet_active = 1;

 arizona_extcon_hp_clamp(info, 1);

 ret = regmap_update_bits(arizona->regmap,
     ARIZONA_ACCESSORY_DETECT_MODE_1,
     ARIZONA_ACCDET_SRC | ARIZONA_ACCDET_MODE_MASK,
     info->micd_modes[0].src |
     arizona->pdata.hpdet_channel);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to set HPDET mode: %d\n", ret);
  goto err;
 }

 if (arizona->pdata.hpdet_acc_id_line) {
  ret = regmap_update_bits(arizona->regmap,
      ARIZONA_HEADPHONE_DETECT_1,
      ARIZONA_HP_POLL, ARIZONA_HP_POLL);
  if (ret != 0) {
   dev_err(arizona->dev,
    "Can't start HPDETL measurement: %d\n",
    ret);
   goto err;
  }
 } else {
  arizona_hpdet_do_id(info, &hp_reading, &mic);
 }

 return;

err:
 regmap_update_bits(arizona->regmap, ARIZONA_ACCESSORY_DETECT_MODE_1,
      ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);


 ret = extcon_set_state_sync(info->edev, EXTCON_JACK_HEADPHONE, 1);
 if (ret != 0)
  dev_err(arizona->dev, "Failed to report headphone: %d\n", ret);

 info->hpdet_active = 0;
}
