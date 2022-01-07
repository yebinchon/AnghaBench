
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max30100_data {int regmap; } ;


 int MAX30100_REG_FIFO_OVR_CTR ;
 int MAX30100_REG_FIFO_RD_PTR ;
 int MAX30100_REG_FIFO_WR_PTR ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int max30100_clear_fifo(struct max30100_data *data)
{
 int ret;

 ret = regmap_write(data->regmap, MAX30100_REG_FIFO_WR_PTR, 0);
 if (ret)
  return ret;

 ret = regmap_write(data->regmap, MAX30100_REG_FIFO_OVR_CTR, 0);
 if (ret)
  return ret;

 return regmap_write(data->regmap, MAX30100_REG_FIFO_RD_PTR, 0);
}
