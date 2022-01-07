
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int work; } ;
struct arizona_extcon_info {TYPE_2__ micd_detect_work; int lock; int detecting; TYPE_2__ micd_timeout_work; struct arizona* arizona; } ;
struct TYPE_4__ {int micd_detect_debounce; } ;
struct arizona {TYPE_1__ pdata; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int arizona_micd_detect (int *) ;
 int cancel_delayed_work_sync (TYPE_2__*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,TYPE_2__*,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t arizona_micdet(int irq, void *data)
{
 struct arizona_extcon_info *info = data;
 struct arizona *arizona = info->arizona;
 int debounce = arizona->pdata.micd_detect_debounce;

 cancel_delayed_work_sync(&info->micd_detect_work);
 cancel_delayed_work_sync(&info->micd_timeout_work);

 mutex_lock(&info->lock);
 if (!info->detecting)
  debounce = 0;
 mutex_unlock(&info->lock);

 if (debounce)
  queue_delayed_work(system_power_efficient_wq,
       &info->micd_detect_work,
       msecs_to_jiffies(debounce));
 else
  arizona_micd_detect(&info->micd_detect_work.work);

 return IRQ_HANDLED;
}
