
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct i2c_client {int dev; } ;
struct ak8975_data {TYPE_1__* def; int eoc_gpio; struct i2c_client* client; } ;
struct TYPE_2__ {int * ctrl_regs; } ;


 scalar_t__ AK8975_CONVERSION_DONE_POLL_TIME ;
 scalar_t__ AK8975_MAX_CONVERSION_TIMEOUT ;
 int EINVAL ;
 size_t ST1 ;
 int dev_err (int *,char*) ;
 scalar_t__ gpio_get_value (int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int msleep (scalar_t__) ;

__attribute__((used)) static int wait_conversion_complete_gpio(struct ak8975_data *data)
{
 struct i2c_client *client = data->client;
 u32 timeout_ms = AK8975_MAX_CONVERSION_TIMEOUT;
 int ret;


 while (timeout_ms) {
  msleep(AK8975_CONVERSION_DONE_POLL_TIME);
  if (gpio_get_value(data->eoc_gpio))
   break;
  timeout_ms -= AK8975_CONVERSION_DONE_POLL_TIME;
 }
 if (!timeout_ms) {
  dev_err(&client->dev, "Conversion timeout happened\n");
  return -EINVAL;
 }

 ret = i2c_smbus_read_byte_data(client, data->def->ctrl_regs[ST1]);
 if (ret < 0)
  dev_err(&client->dev, "Error in reading ST1\n");

 return ret;
}
