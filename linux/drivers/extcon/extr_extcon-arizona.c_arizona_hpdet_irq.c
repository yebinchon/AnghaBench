
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arizona_extcon_info {int hpdet_active; int hpdet_done; int lock; int dev; scalar_t__ mic; int edev; struct arizona* arizona; } ;
struct TYPE_2__ {int hpdet_id_gpio; } ;
struct arizona {int regmap; int dev; TYPE_1__ pdata; } ;
typedef int irqreturn_t ;


 int ARIZONA_ACCDET_MODE_MASK ;
 int ARIZONA_ACCDET_MODE_MIC ;
 int ARIZONA_ACCESSORY_DETECT_MODE_1 ;
 int ARIZONA_HEADPHONE_DETECT_1 ;
 int ARIZONA_HP_IMPEDANCE_RANGE_MASK ;
 int ARIZONA_HP_POLL ;
 int EAGAIN ;
 unsigned int EXTCON_JACK_HEADPHONE ;
 unsigned int EXTCON_JACK_LINE_OUT ;
 int EXTCON_MECHANICAL ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int arizona_extcon_hp_clamp (struct arizona_extcon_info*,int) ;
 int arizona_hpdet_do_id (struct arizona_extcon_info*,int*,int*) ;
 int arizona_hpdet_read (struct arizona_extcon_info*) ;
 int arizona_start_mic (struct arizona_extcon_info*) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int extcon_get_state (int ,int ) ;
 int extcon_set_state_sync (int ,unsigned int,int) ;
 int gpio_set_value_cansleep (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static irqreturn_t arizona_hpdet_irq(int irq, void *data)
{
 struct arizona_extcon_info *info = data;
 struct arizona *arizona = info->arizona;
 int id_gpio = arizona->pdata.hpdet_id_gpio;
 unsigned int report = EXTCON_JACK_HEADPHONE;
 int ret, reading;
 bool mic = 0;

 mutex_lock(&info->lock);


 if (!info->hpdet_active) {
  dev_warn(arizona->dev, "Spurious HPDET IRQ\n");
  mutex_unlock(&info->lock);
  return IRQ_NONE;
 }


 ret = extcon_get_state(info->edev, EXTCON_MECHANICAL);
 if (ret < 0) {
  dev_err(arizona->dev, "Failed to check cable state: %d\n",
   ret);
  goto out;
 } else if (!ret) {
  dev_dbg(arizona->dev, "Ignoring HPDET for removed cable\n");
  goto done;
 }

 ret = arizona_hpdet_read(info);
 if (ret == -EAGAIN)
  goto out;
 else if (ret < 0)
  goto done;
 reading = ret;


 regmap_update_bits(arizona->regmap,
      ARIZONA_HEADPHONE_DETECT_1,
      ARIZONA_HP_IMPEDANCE_RANGE_MASK | ARIZONA_HP_POLL,
      0);

 ret = arizona_hpdet_do_id(info, &reading, &mic);
 if (ret == -EAGAIN)
  goto out;
 else if (ret < 0)
  goto done;


 if (reading >= 5000)
  report = EXTCON_JACK_LINE_OUT;
 else
  report = EXTCON_JACK_HEADPHONE;

 ret = extcon_set_state_sync(info->edev, report, 1);
 if (ret != 0)
  dev_err(arizona->dev, "Failed to report HP/line: %d\n",
   ret);

done:

 regmap_update_bits(arizona->regmap,
      ARIZONA_HEADPHONE_DETECT_1,
      ARIZONA_HP_IMPEDANCE_RANGE_MASK | ARIZONA_HP_POLL,
      0);

 arizona_extcon_hp_clamp(info, 0);

 if (id_gpio)
  gpio_set_value_cansleep(id_gpio, 0);


 regmap_update_bits(arizona->regmap,
      ARIZONA_ACCESSORY_DETECT_MODE_1,
      ARIZONA_ACCDET_MODE_MASK, ARIZONA_ACCDET_MODE_MIC);


 if (mic || info->mic)
  arizona_start_mic(info);

 if (info->hpdet_active) {
  pm_runtime_put_autosuspend(info->dev);
  info->hpdet_active = 0;
 }

 info->hpdet_done = 1;

out:
 mutex_unlock(&info->lock);

 return IRQ_HANDLED;
}
