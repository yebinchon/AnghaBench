
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2583_chip {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int tsl2583_set_pm_runtime_busy(struct tsl2583_chip *chip, bool on)
{
 int ret;

 if (on) {
  ret = pm_runtime_get_sync(&chip->client->dev);
  if (ret < 0)
   pm_runtime_put_noidle(&chip->client->dev);
 } else {
  pm_runtime_mark_last_busy(&chip->client->dev);
  ret = pm_runtime_put_autosuspend(&chip->client->dev);
 }

 return ret;
}
