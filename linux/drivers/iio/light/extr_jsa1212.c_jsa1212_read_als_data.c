
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsa1212_data {TYPE_1__* client; int regmap; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int JSA1212_ALS_DELAY_MS ;
 int JSA1212_ALS_DT1_REG ;
 int JSA1212_CONF_ALS_DISABLE ;
 int JSA1212_CONF_ALS_ENABLE ;
 int dev_err (int *,char*) ;
 int jsa1212_als_enable (struct jsa1212_data*,int ) ;
 unsigned int le16_to_cpu (int ) ;
 int msleep (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int jsa1212_read_als_data(struct jsa1212_data *data,
    unsigned int *val)
{
 int ret;
 __le16 als_data;

 ret = jsa1212_als_enable(data, JSA1212_CONF_ALS_ENABLE);
 if (ret < 0)
  return ret;


 msleep(JSA1212_ALS_DELAY_MS);


 ret = regmap_bulk_read(data->regmap, JSA1212_ALS_DT1_REG, &als_data, 2);
 if (ret < 0) {
  dev_err(&data->client->dev, "als data read err\n");
  goto als_data_read_err;
 }

 *val = le16_to_cpu(als_data);

als_data_read_err:
 return jsa1212_als_enable(data, JSA1212_CONF_ALS_DISABLE);
}
