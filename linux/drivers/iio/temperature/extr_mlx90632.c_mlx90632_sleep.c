
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx90632_data {int regmap; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int mlx90632_pwr_set_sleep_step (int ) ;
 int regcache_mark_dirty (int ) ;

__attribute__((used)) static int mlx90632_sleep(struct mlx90632_data *data)
{
 regcache_mark_dirty(data->regmap);

 dev_dbg(&data->client->dev, "Requesting sleep");
 return mlx90632_pwr_set_sleep_step(data->regmap);
}
