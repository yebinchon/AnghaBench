
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct jsa1212_data {int pxs_en; int regmap; } ;


 int JSA1212_CONF_PXS_MASK ;
 int JSA1212_CONF_REG ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int jsa1212_pxs_enable(struct jsa1212_data *data, u8 status)
{
 int ret;

 ret = regmap_update_bits(data->regmap, JSA1212_CONF_REG,
    JSA1212_CONF_PXS_MASK,
    status);
 if (ret < 0)
  return ret;

 data->pxs_en = !!status;

 return 0;
}
