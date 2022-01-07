
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct lidar_data {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;


 int EINVAL ;
 int EIO ;
 int LIDAR_REG_CONTROL_ACQUIRE ;
 int LIDAR_REG_STATUS ;
 int LIDAR_REG_STATUS_INVALID ;
 int LIDAR_REG_STATUS_READY ;
 int dev_err (int *,char*) ;
 int lidar_read_byte (struct lidar_data*,int ) ;
 int lidar_read_measurement (struct lidar_data*,scalar_t__*) ;
 int lidar_write_control (struct lidar_data*,int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lidar_get_measurement(struct lidar_data *data, u16 *reg)
{
 struct i2c_client *client = data->client;
 int tries = 10;
 int ret;

 pm_runtime_get_sync(&client->dev);


 ret = lidar_write_control(data, LIDAR_REG_CONTROL_ACQUIRE);
 if (ret < 0) {
  dev_err(&client->dev, "cannot send start measurement command");
  return ret;
 }

 while (tries--) {
  usleep_range(1000, 2000);

  ret = lidar_read_byte(data, LIDAR_REG_STATUS);
  if (ret < 0)
   break;


  if (ret & LIDAR_REG_STATUS_INVALID) {
   *reg = 0;
   ret = -EINVAL;
   break;
  }


  if (!(ret & LIDAR_REG_STATUS_READY)) {
   ret = lidar_read_measurement(data, reg);
   break;
  }
  ret = -EIO;
 }
 pm_runtime_mark_last_busy(&client->dev);
 pm_runtime_put_autosuspend(&client->dev);

 return ret;
}
