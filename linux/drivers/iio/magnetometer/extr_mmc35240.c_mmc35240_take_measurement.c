
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc35240_data {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int MMC35240_CTRL0_TM_BIT ;
 int MMC35240_REG_CTRL0 ;
 int MMC35240_REG_STATUS ;
 unsigned int MMC35240_STATUS_MEAS_DONE_BIT ;
 int dev_err (int *,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mmc35240_take_measurement(struct mmc35240_data *data)
{
 int ret, tries = 100;
 unsigned int reg_status;

 ret = regmap_write(data->regmap, MMC35240_REG_CTRL0,
      MMC35240_CTRL0_TM_BIT);
 if (ret < 0)
  return ret;

 while (tries-- > 0) {
  ret = regmap_read(data->regmap, MMC35240_REG_STATUS,
      &reg_status);
  if (ret < 0)
   return ret;
  if (reg_status & MMC35240_STATUS_MEAS_DONE_BIT)
   break;

  usleep_range(10000, 11000);
 }

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready\n");
  return -EIO;
 }

 return 0;
}
