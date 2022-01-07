
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx90632_data {int regmap; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int mlx90632_pwr_continuous (int ) ;
 int regcache_sync (int ) ;

__attribute__((used)) static int mlx90632_wakeup(struct mlx90632_data *data)
{
 int ret;

 ret = regcache_sync(data->regmap);
 if (ret < 0) {
  dev_err(&data->client->dev,
   "Failed to sync regmap registers: %d\n", ret);
  return ret;
 }

 dev_dbg(&data->client->dev, "Requesting wake-up\n");
 return mlx90632_pwr_continuous(data->regmap);
}
