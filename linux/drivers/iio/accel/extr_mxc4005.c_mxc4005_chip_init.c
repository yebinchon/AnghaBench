
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc4005_data {int dev; int regmap; } ;


 int MXC4005_REG_DEVICE_ID ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int mxc4005_chip_init(struct mxc4005_data *data)
{
 int ret;
 unsigned int reg;

 ret = regmap_read(data->regmap, MXC4005_REG_DEVICE_ID, &reg);
 if (ret < 0) {
  dev_err(data->dev, "failed to read chip id\n");
  return ret;
 }

 dev_dbg(data->dev, "MXC4005 chip id %02x\n", reg);

 return 0;
}
