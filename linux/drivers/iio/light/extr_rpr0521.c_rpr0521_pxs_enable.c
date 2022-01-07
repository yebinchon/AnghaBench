
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rpr0521_data {int pxs_dev_en; int regmap; } ;


 int RPR0521_MODE_PXS_MASK ;
 int RPR0521_REG_MODE_CTRL ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int rpr0521_pxs_enable(struct rpr0521_data *data, u8 status)
{
 int ret;

 ret = regmap_update_bits(data->regmap, RPR0521_REG_MODE_CTRL,
     RPR0521_MODE_PXS_MASK,
     status);
 if (ret < 0)
  return ret;

 if (status & RPR0521_MODE_PXS_MASK)
  data->pxs_dev_en = 1;
 else
  data->pxs_dev_en = 0;

 return 0;
}
