
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {int als_dev_en; int pxs_dev_en; TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int RPR0521_MODE_ALS_DISABLE ;
 int RPR0521_MODE_ALS_MASK ;
 int RPR0521_MODE_PXS_DISABLE ;
 int RPR0521_MODE_PXS_MASK ;
 int RPR0521_REG_INTERRUPT ;
 int RPR0521_REG_MODE_CTRL ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int rpr0521_poweroff(struct rpr0521_data *data)
{
 int ret;
 int tmp;

 ret = regmap_update_bits(data->regmap, RPR0521_REG_MODE_CTRL,
     RPR0521_MODE_ALS_MASK |
     RPR0521_MODE_PXS_MASK,
     RPR0521_MODE_ALS_DISABLE |
     RPR0521_MODE_PXS_DISABLE);
 if (ret < 0)
  return ret;

 data->als_dev_en = 0;
 data->pxs_dev_en = 0;





 ret = regmap_read(data->regmap, RPR0521_REG_INTERRUPT, &tmp);
 if (ret) {
  dev_err(&data->client->dev, "Failed to reset int pin.\n");
  return ret;
 }

 return 0;
}
