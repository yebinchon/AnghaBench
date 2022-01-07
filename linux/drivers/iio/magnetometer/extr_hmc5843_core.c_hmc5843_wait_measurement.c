
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hmc5843_data {int dev; int regmap; } ;


 int EIO ;
 unsigned int HMC5843_DATA_READY ;
 int HMC5843_STATUS_REG ;
 int dev_err (int ,char*) ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int hmc5843_wait_measurement(struct hmc5843_data *data)
{
 int tries = 150;
 unsigned int val;
 int ret;

 while (tries-- > 0) {
  ret = regmap_read(data->regmap, HMC5843_STATUS_REG, &val);
  if (ret < 0)
   return ret;
  if (val & HMC5843_DATA_READY)
   break;
  msleep(20);
 }

 if (tries < 0) {
  dev_err(data->dev, "data not ready\n");
  return -EIO;
 }

 return 0;
}
