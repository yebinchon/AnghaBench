
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcs3472_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int TCS3472_STATUS ;
 int TCS3472_STATUS_AVALID ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int tcs3472_req_data(struct tcs3472_data *data)
{
 int tries = 50;
 int ret;

 while (tries--) {
  ret = i2c_smbus_read_byte_data(data->client, TCS3472_STATUS);
  if (ret < 0)
   return ret;
  if (ret & TCS3472_STATUS_AVALID)
   break;
  msleep(20);
 }

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready\n");
  return -EIO;
 }

 return 0;
}
