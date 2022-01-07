
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsa1212_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int JSA1212_CONF_PXS_DISABLE ;
 int JSA1212_CONF_PXS_ENABLE ;
 unsigned int JSA1212_PXS_DATA_MASK ;
 int JSA1212_PXS_DATA_REG ;
 int JSA1212_PXS_DELAY_MS ;
 int dev_err (int *,char*) ;
 int jsa1212_pxs_enable (struct jsa1212_data*,int ) ;
 int msleep (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int jsa1212_read_pxs_data(struct jsa1212_data *data,
    unsigned int *val)
{
 int ret;
 unsigned int pxs_data;

 ret = jsa1212_pxs_enable(data, JSA1212_CONF_PXS_ENABLE);
 if (ret < 0)
  return ret;


 msleep(JSA1212_PXS_DELAY_MS);


 ret = regmap_read(data->regmap, JSA1212_PXS_DATA_REG, &pxs_data);
 if (ret < 0) {
  dev_err(&data->client->dev, "pxs data read err\n");
  goto pxs_data_read_err;
 }

 *val = pxs_data & JSA1212_PXS_DATA_MASK;

pxs_data_read_err:
 return jsa1212_pxs_enable(data, JSA1212_CONF_PXS_DISABLE);
}
