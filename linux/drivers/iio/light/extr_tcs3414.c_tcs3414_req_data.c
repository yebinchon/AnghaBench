
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tcs3414_data {int control; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int TCS3414_CONTROL ;
 int TCS3414_CONTROL_ADC_EN ;
 int TCS3414_CONTROL_ADC_VALID ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int tcs3414_req_data(struct tcs3414_data *data)
{
 int tries = 25;
 int ret;

 ret = i2c_smbus_write_byte_data(data->client, TCS3414_CONTROL,
  data->control | TCS3414_CONTROL_ADC_EN);
 if (ret < 0)
  return ret;

 while (tries--) {
  ret = i2c_smbus_read_byte_data(data->client, TCS3414_CONTROL);
  if (ret < 0)
   return ret;
  if (ret & TCS3414_CONTROL_ADC_VALID)
   break;
  msleep(20);
 }

 ret = i2c_smbus_write_byte_data(data->client, TCS3414_CONTROL,
  data->control);
 if (ret < 0)
  return ret;

 if (tries < 0) {
  dev_err(&data->client->dev, "data not ready\n");
  return -EIO;
 }

 return 0;
}
