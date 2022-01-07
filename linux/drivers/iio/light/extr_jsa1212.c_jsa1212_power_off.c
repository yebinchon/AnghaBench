
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsa1212_data {int lock; TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int JSA1212_CONF_ALS_DISABLE ;
 int JSA1212_CONF_ALS_MASK ;
 int JSA1212_CONF_PXS_DISABLE ;
 int JSA1212_CONF_PXS_MASK ;
 int JSA1212_CONF_REG ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int jsa1212_power_off(struct jsa1212_data *data)
{
 int ret;

 mutex_lock(&data->lock);

 ret = regmap_update_bits(data->regmap, JSA1212_CONF_REG,
    JSA1212_CONF_ALS_MASK |
    JSA1212_CONF_PXS_MASK,
    JSA1212_CONF_ALS_DISABLE |
    JSA1212_CONF_PXS_DISABLE);

 if (ret < 0)
  dev_err(&data->client->dev, "power off cmd failed\n");

 mutex_unlock(&data->lock);

 return ret;
}
