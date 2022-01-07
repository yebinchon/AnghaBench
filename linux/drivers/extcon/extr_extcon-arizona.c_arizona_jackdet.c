
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct arizona_extcon_info {unsigned int last_jackdet; int micd_timeout; int detecting; int mic; int hpdet_done; int hpdet_retried; int num_micd_ranges; int dev; int lock; int edev; int input; TYPE_1__* micd_ranges; scalar_t__* hpdet_res; scalar_t__ num_hpdet_res; scalar_t__ micd_clamp; int hpdet_work; scalar_t__ jack_flips; int micd_timeout_work; struct arizona* arizona; } ;
struct TYPE_4__ {int micd_timeout; scalar_t__ jd_invert; int hpdet_acc_id; } ;
struct arizona {int regmap; TYPE_2__ pdata; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int key; } ;


 int ARIZONA_AOD_IRQ_RAW_STATUS ;
 int ARIZONA_AOD_WKUP_AND_TRIG ;
 int ARIZONA_JACK_DETECT_DEBOUNCE ;
 int ARIZONA_JD1_DB ;
 int ARIZONA_JD1_FALL_TRIG_STS ;
 int ARIZONA_JD1_RISE_TRIG_STS ;
 unsigned int ARIZONA_JD1_STS ;
 int ARIZONA_MICD_CLAMP_DB ;
 int ARIZONA_MICD_CLAMP_FALL_TRIG_STS ;
 int ARIZONA_MICD_CLAMP_RISE_TRIG_STS ;
 unsigned int ARIZONA_MICD_CLAMP_STS ;
 int ARRAY_SIZE (scalar_t__*) ;
 int DEFAULT_MICD_TIMEOUT ;
 scalar_t__ EXTCON_MECHANICAL ;
 int HPDET_DEBOUNCE ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__* arizona_cable ;
 int arizona_hpdet_wait (struct arizona_extcon_info*) ;
 int arizona_start_mic (struct arizona_extcon_info*) ;
 int arizona_stop_mic (struct arizona_extcon_info*) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int extcon_set_state_sync (int ,scalar_t__,int) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t arizona_jackdet(int irq, void *data)
{
 struct arizona_extcon_info *info = data;
 struct arizona *arizona = info->arizona;
 unsigned int val, present, mask;
 bool cancelled_hp, cancelled_mic;
 int ret, i;

 cancelled_hp = cancel_delayed_work_sync(&info->hpdet_work);
 cancelled_mic = cancel_delayed_work_sync(&info->micd_timeout_work);

 pm_runtime_get_sync(info->dev);

 mutex_lock(&info->lock);

 if (info->micd_clamp) {
  mask = ARIZONA_MICD_CLAMP_STS;
  present = 0;
 } else {
  mask = ARIZONA_JD1_STS;
  if (arizona->pdata.jd_invert)
   present = 0;
  else
   present = ARIZONA_JD1_STS;
 }

 ret = regmap_read(arizona->regmap, ARIZONA_AOD_IRQ_RAW_STATUS, &val);
 if (ret != 0) {
  dev_err(arizona->dev, "Failed to read jackdet status: %d\n",
   ret);
  mutex_unlock(&info->lock);
  pm_runtime_put_autosuspend(info->dev);
  return IRQ_NONE;
 }

 val &= mask;
 if (val == info->last_jackdet) {
  dev_dbg(arizona->dev, "Suppressing duplicate JACKDET\n");
  if (cancelled_hp)
   queue_delayed_work(system_power_efficient_wq,
        &info->hpdet_work,
        msecs_to_jiffies(HPDET_DEBOUNCE));

  if (cancelled_mic) {
   int micd_timeout = info->micd_timeout;

   queue_delayed_work(system_power_efficient_wq,
        &info->micd_timeout_work,
        msecs_to_jiffies(micd_timeout));
  }

  goto out;
 }
 info->last_jackdet = val;

 if (info->last_jackdet == present) {
  dev_dbg(arizona->dev, "Detected jack\n");
  ret = extcon_set_state_sync(info->edev,
           EXTCON_MECHANICAL, 1);

  if (ret != 0)
   dev_err(arizona->dev, "Mechanical report failed: %d\n",
    ret);

  if (!arizona->pdata.hpdet_acc_id) {
   info->detecting = 1;
   info->mic = 0;
   info->jack_flips = 0;

   arizona_start_mic(info);
  } else {
   queue_delayed_work(system_power_efficient_wq,
        &info->hpdet_work,
        msecs_to_jiffies(HPDET_DEBOUNCE));
  }

  if (info->micd_clamp || !arizona->pdata.jd_invert)
   regmap_update_bits(arizona->regmap,
        ARIZONA_JACK_DETECT_DEBOUNCE,
        ARIZONA_MICD_CLAMP_DB |
        ARIZONA_JD1_DB, 0);
 } else {
  dev_dbg(arizona->dev, "Detected jack removal\n");

  arizona_stop_mic(info);

  info->num_hpdet_res = 0;
  for (i = 0; i < ARRAY_SIZE(info->hpdet_res); i++)
   info->hpdet_res[i] = 0;
  info->mic = 0;
  info->hpdet_done = 0;
  info->hpdet_retried = 0;

  for (i = 0; i < info->num_micd_ranges; i++)
   input_report_key(info->input,
      info->micd_ranges[i].key, 0);
  input_sync(info->input);

  for (i = 0; i < ARRAY_SIZE(arizona_cable) - 1; i++) {
   ret = extcon_set_state_sync(info->edev,
     arizona_cable[i], 0);
   if (ret != 0)
    dev_err(arizona->dev,
     "Removal report failed: %d\n", ret);
  }
  arizona_hpdet_wait(info);

  regmap_update_bits(arizona->regmap,
       ARIZONA_JACK_DETECT_DEBOUNCE,
       ARIZONA_MICD_CLAMP_DB | ARIZONA_JD1_DB,
       ARIZONA_MICD_CLAMP_DB | ARIZONA_JD1_DB);
 }

 if (arizona->pdata.micd_timeout)
  info->micd_timeout = arizona->pdata.micd_timeout;
 else
  info->micd_timeout = DEFAULT_MICD_TIMEOUT;

out:

 regmap_write(arizona->regmap, ARIZONA_AOD_WKUP_AND_TRIG,
       ARIZONA_MICD_CLAMP_FALL_TRIG_STS |
       ARIZONA_MICD_CLAMP_RISE_TRIG_STS |
       ARIZONA_JD1_FALL_TRIG_STS |
       ARIZONA_JD1_RISE_TRIG_STS);

 mutex_unlock(&info->lock);

 pm_runtime_mark_last_busy(info->dev);
 pm_runtime_put_autosuspend(info->dev);

 return IRQ_HANDLED;
}
