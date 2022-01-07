
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int dev; int regmap; } ;


 int MXC4005_REG_INT_CLR1 ;
 int MXC4005_REG_INT_CLR1_BIT_DRDYC ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mxc4005_clr_intr(struct mxc4005_data *data)
{
 int ret;


 ret = regmap_write(data->regmap, MXC4005_REG_INT_CLR1,
      MXC4005_REG_INT_CLR1_BIT_DRDYC);
 if (ret < 0) {
  dev_err(data->dev, "failed to write to reg_int_clr1\n");
  return ret;
 }

 return 0;
}
