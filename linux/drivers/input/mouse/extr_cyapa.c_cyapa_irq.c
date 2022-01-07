
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct cyapa {int state_sync_lock; TYPE_2__* ops; scalar_t__ operational; int input; TYPE_1__* client; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* irq_handler ) (struct cyapa*) ;int (* sort_empty_output_data ) (struct cyapa*,int *,int *,int *) ;scalar_t__ (* irq_cmd_handler ) (struct cyapa*) ;} ;
struct TYPE_3__ {struct device dev; } ;


 int IRQ_HANDLED ;
 int cyapa_reinitialize (struct cyapa*) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_sync_autosuspend (struct device*) ;
 int pm_wakeup_event (struct device*,int ) ;
 scalar_t__ stub1 (struct cyapa*) ;
 int stub2 (struct cyapa*,int *,int *,int *) ;
 int stub3 (struct cyapa*) ;
 int stub4 (struct cyapa*,int *,int *,int *) ;

__attribute__((used)) static irqreturn_t cyapa_irq(int irq, void *dev_id)
{
 struct cyapa *cyapa = dev_id;
 struct device *dev = &cyapa->client->dev;
 int error;

 if (device_may_wakeup(dev))
  pm_wakeup_event(dev, 0);


 if (cyapa->ops->irq_cmd_handler(cyapa)) {



  if (!cyapa->input) {




   cyapa->ops->sort_empty_output_data(cyapa,
     ((void*)0), ((void*)0), ((void*)0));
   goto out;
  }

  if (cyapa->operational) {
   error = cyapa->ops->irq_handler(cyapa);
   pm_runtime_get_sync(dev);
   pm_runtime_mark_last_busy(dev);
   pm_runtime_put_sync_autosuspend(dev);
  }

  if (!cyapa->operational || error) {
   if (!mutex_trylock(&cyapa->state_sync_lock)) {
    cyapa->ops->sort_empty_output_data(cyapa,
     ((void*)0), ((void*)0), ((void*)0));
    goto out;
   }
   cyapa_reinitialize(cyapa);
   mutex_unlock(&cyapa->state_sync_lock);
  }
 }

out:
 return IRQ_HANDLED;
}
