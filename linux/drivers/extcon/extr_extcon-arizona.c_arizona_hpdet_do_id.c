
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arizona_extcon_info {int* hpdet_res; int num_hpdet_res; int hpdet_retried; int detecting; TYPE_2__* micd_modes; int dev; struct arizona* arizona; } ;
struct TYPE_3__ {int hpdet_id_gpio; scalar_t__ hpdet_acc_id; } ;
struct arizona {int regmap; int dev; TYPE_1__ pdata; } ;
struct TYPE_4__ {int src; } ;


 int ARIZONA_ACCDET_MODE_HPR ;
 int ARIZONA_ACCDET_MODE_MASK ;
 int ARIZONA_ACCDET_SRC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_HEADPHONE_DETECT_1 ;
 int ARIZONA_HPDET_MAX ;
 int ARIZONA_HP_POLL ;
 int EAGAIN ;
 int arizona_start_hpdet_acc_id (struct arizona_extcon_info*) ;
 int dev_dbg (int ,char*,...) ;
 int gpio_set_value_cansleep (int,int) ;
 int pm_runtime_put (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int arizona_hpdet_do_id(struct arizona_extcon_info *info, int *reading,
          bool *mic)
{
 struct arizona *arizona = info->arizona;
 int id_gpio = arizona->pdata.hpdet_id_gpio;





 if (arizona->pdata.hpdet_acc_id) {
  info->hpdet_res[info->num_hpdet_res++] = *reading;


  if (id_gpio && info->num_hpdet_res == 1) {
   dev_dbg(arizona->dev, "Measuring mic\n");

   regmap_update_bits(arizona->regmap,
        ARIZONA_ACCESSORY_DETECT_MODE_1,
        ARIZONA_ACCDET_MODE_MASK |
        ARIZONA_ACCDET_SRC,
        ARIZONA_ACCDET_MODE_HPR |
        info->micd_modes[0].src);

   gpio_set_value_cansleep(id_gpio, 1);

   regmap_update_bits(arizona->regmap,
        ARIZONA_HEADPHONE_DETECT_1,
        ARIZONA_HP_POLL, ARIZONA_HP_POLL);
   return -EAGAIN;
  }


  dev_dbg(arizona->dev, "HPDET measured %d %d\n",
   info->hpdet_res[0], info->hpdet_res[1]);


  *reading = info->hpdet_res[0];


  if (*reading >= ARIZONA_HPDET_MAX && !info->hpdet_retried) {
   dev_dbg(arizona->dev, "Retrying high impedance\n");
   info->num_hpdet_res = 0;
   info->hpdet_retried = 1;
   arizona_start_hpdet_acc_id(info);
   pm_runtime_put(info->dev);
   return -EAGAIN;
  }




  if (!id_gpio || info->hpdet_res[1] > 50) {
   dev_dbg(arizona->dev, "Detected mic\n");
   *mic = 1;
   info->detecting = 1;
  } else {
   dev_dbg(arizona->dev, "Detected headphone\n");
  }


  regmap_update_bits(arizona->regmap,
       ARIZONA_ACCESSORY_DETECT_MODE_1,
       ARIZONA_ACCDET_SRC,
       info->micd_modes[0].src);
 }

 return 0;
}
