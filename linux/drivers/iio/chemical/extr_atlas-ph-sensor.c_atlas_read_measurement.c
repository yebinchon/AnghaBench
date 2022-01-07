
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct atlas_data {int regmap; TYPE_2__* chip; TYPE_1__* client; } ;
typedef int __be32 ;
struct TYPE_4__ {int delay; } ;
struct TYPE_3__ {struct device dev; } ;


 int msleep (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_mark_last_busy (struct device*) ;
 int pm_runtime_put_autosuspend (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_suspended (struct device*) ;
 int regmap_bulk_read (int ,int,int *,int) ;

__attribute__((used)) static int atlas_read_measurement(struct atlas_data *data, int reg, __be32 *val)
{
 struct device *dev = &data->client->dev;
 int suspended = pm_runtime_suspended(dev);
 int ret;

 ret = pm_runtime_get_sync(dev);
 if (ret < 0) {
  pm_runtime_put_noidle(dev);
  return ret;
 }

 if (suspended)
  msleep(data->chip->delay);

 ret = regmap_bulk_read(data->regmap, reg, (u8 *) val, sizeof(*val));

 pm_runtime_mark_last_busy(dev);
 pm_runtime_put_autosuspend(dev);

 return ret;
}
