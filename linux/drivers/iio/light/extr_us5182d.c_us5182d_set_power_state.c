
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us5182d_data {scalar_t__ power_mode; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ US5182D_ONESHOT ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int us5182d_set_power_state(struct us5182d_data *data, bool on)
{
 int ret;

 if (data->power_mode == US5182D_ONESHOT)
  return 0;

 if (on) {
  ret = pm_runtime_get_sync(&data->client->dev);
  if (ret < 0)
   pm_runtime_put_noidle(&data->client->dev);
 } else {
  pm_runtime_mark_last_busy(&data->client->dev);
  ret = pm_runtime_put_autosuspend(&data->client->dev);
 }

 return ret;
}
