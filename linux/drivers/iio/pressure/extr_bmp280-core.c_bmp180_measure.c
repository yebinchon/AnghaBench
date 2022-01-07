
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct bmp280_data {size_t oversampling_press; int regmap; int dev; int done; scalar_t__ use_eoc; } ;


 unsigned int BMP180_MEAS_SCO ;
 scalar_t__ BMP180_MEAS_TEMP ;
 int BMP280_REG_CTRL_MEAS ;
 int EIO ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,scalar_t__) ;
 int usleep_range (unsigned int,unsigned int) ;
 int wait_for_completion_timeout (int *,scalar_t__) ;

__attribute__((used)) static int bmp180_measure(struct bmp280_data *data, u8 ctrl_meas)
{
 int ret;
 const int conversion_time_max[] = { 4500, 7500, 13500, 25500 };
 unsigned int delay_us;
 unsigned int ctrl;

 if (data->use_eoc)
  init_completion(&data->done);

 ret = regmap_write(data->regmap, BMP280_REG_CTRL_MEAS, ctrl_meas);
 if (ret)
  return ret;

 if (data->use_eoc) {





  ret = wait_for_completion_timeout(&data->done,
        1 + msecs_to_jiffies(100));
  if (!ret)
   dev_err(data->dev, "timeout waiting for completion\n");
 } else {
  if (ctrl_meas == BMP180_MEAS_TEMP)
   delay_us = 4500;
  else
   delay_us =
    conversion_time_max[data->oversampling_press];

  usleep_range(delay_us, delay_us + 1000);
 }

 ret = regmap_read(data->regmap, BMP280_REG_CTRL_MEAS, &ctrl);
 if (ret)
  return ret;


 if (ctrl & BMP180_MEAS_SCO)
  return -EIO;

 return 0;
}
