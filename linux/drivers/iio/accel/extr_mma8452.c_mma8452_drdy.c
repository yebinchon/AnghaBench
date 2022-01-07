
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma8452_data {int sleep_val; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int MMA8452_STATUS ;
 int MMA8452_STATUS_DRDY ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mma8452_drdy(struct mma8452_data *data)
{
 int tries = 150;

 while (tries-- > 0) {
  int ret = i2c_smbus_read_byte_data(data->client,
   MMA8452_STATUS);
  if (ret < 0)
   return ret;
  if ((ret & MMA8452_STATUS_DRDY) == MMA8452_STATUS_DRDY)
   return 0;

  if (data->sleep_val <= 20)
   usleep_range(data->sleep_val * 250,
         data->sleep_val * 500);
  else
   msleep(20);
 }

 dev_err(&data->client->dev, "data not ready\n");

 return -EIO;
}
