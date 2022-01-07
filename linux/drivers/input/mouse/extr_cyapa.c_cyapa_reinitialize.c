
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct input_dev {int users; } ;
struct device {int dummy; } ;
struct cyapa {scalar_t__ operational; TYPE_2__* ops; struct input_dev* input; TYPE_1__* client; } ;
struct TYPE_4__ {int (* set_power_mode ) (struct cyapa*,int ,int ,int ) ;} ;
struct TYPE_3__ {struct device dev; } ;


 int CYAPA_PM_ACTIVE ;
 int CYAPA_PM_DEACTIVE ;
 int PWR_MODE_FULL_ACTIVE ;
 int PWR_MODE_OFF ;
 int cyapa_create_input_dev (struct cyapa*) ;
 int cyapa_detect (struct cyapa*) ;
 int dev_err (struct device*,char*,int) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 scalar_t__ pm_runtime_enabled (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_sync_autosuspend (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int stub1 (struct cyapa*,int ,int ,int ) ;
 int stub2 (struct cyapa*,int ,int ,int ) ;

__attribute__((used)) static int cyapa_reinitialize(struct cyapa *cyapa)
{
 struct device *dev = &cyapa->client->dev;
 struct input_dev *input = cyapa->input;
 int error;

 if (pm_runtime_enabled(dev))
  pm_runtime_disable(dev);


 if (cyapa->operational)
  cyapa->ops->set_power_mode(cyapa,
    PWR_MODE_FULL_ACTIVE, 0, CYAPA_PM_ACTIVE);

 error = cyapa_detect(cyapa);
 if (error)
  goto out;

 if (!input && cyapa->operational) {
  error = cyapa_create_input_dev(cyapa);
  if (error) {
   dev_err(dev, "create input_dev instance failed: %d\n",
     error);
   goto out;
  }
 }

out:
 if (!input || !input->users) {

  if (cyapa->operational)
   cyapa->ops->set_power_mode(cyapa,
     PWR_MODE_OFF, 0, CYAPA_PM_DEACTIVE);
 } else if (!error && cyapa->operational) {




  pm_runtime_set_active(dev);
  pm_runtime_enable(dev);

  pm_runtime_get_sync(dev);
  pm_runtime_mark_last_busy(dev);
  pm_runtime_put_sync_autosuspend(dev);
 }

 return error;
}
