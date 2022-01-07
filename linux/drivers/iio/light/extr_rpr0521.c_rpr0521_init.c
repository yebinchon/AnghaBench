
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {scalar_t__ irq_timestamp; int regmap; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int RPR0521_DEFAULT_MEAS_TIME ;
 int RPR0521_MANUFACT_ID ;
 int RPR0521_MODE_ALS_ENABLE ;
 int RPR0521_MODE_MEAS_TIME_MASK ;
 int RPR0521_MODE_PXS_ENABLE ;
 int RPR0521_REG_ID ;
 int RPR0521_REG_MODE_CTRL ;
 int dev_err (int *,char*,...) ;
 int pr_err (char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rpr0521_als_enable (struct rpr0521_data*,int ) ;
 int rpr0521_pxs_enable (struct rpr0521_data*,int ) ;

__attribute__((used)) static int rpr0521_init(struct rpr0521_data *data)
{
 int ret;
 int id;

 ret = regmap_read(data->regmap, RPR0521_REG_ID, &id);
 if (ret < 0) {
  dev_err(&data->client->dev, "Failed to read REG_ID register\n");
  return ret;
 }

 if (id != RPR0521_MANUFACT_ID) {
  dev_err(&data->client->dev, "Wrong id, got %x, expected %x\n",
   id, RPR0521_MANUFACT_ID);
  return -ENODEV;
 }


 ret = regmap_update_bits(data->regmap, RPR0521_REG_MODE_CTRL,
     RPR0521_MODE_MEAS_TIME_MASK,
     RPR0521_DEFAULT_MEAS_TIME);
 if (ret) {
  pr_err("regmap_update_bits returned %d\n", ret);
  return ret;
 }


 ret = rpr0521_als_enable(data, RPR0521_MODE_ALS_ENABLE);
 if (ret < 0)
  return ret;
 ret = rpr0521_pxs_enable(data, RPR0521_MODE_PXS_ENABLE);
 if (ret < 0)
  return ret;


 data->irq_timestamp = 0;

 return 0;
}
