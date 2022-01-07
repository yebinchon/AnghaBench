
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcnl4035_data {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;

__attribute__((used)) static int vcnl4035_set_pm_runtime_state(struct vcnl4035_data *data, bool on)
{
 int ret;
 struct device *dev = &data->client->dev;

 if (on) {
  ret = pm_runtime_get_sync(dev);
  if (ret < 0)
   pm_runtime_put_noidle(dev);
 } else {
  pm_runtime_mark_last_busy(dev);
  ret = pm_runtime_put_autosuspend(dev);
 }

 return ret;
}
