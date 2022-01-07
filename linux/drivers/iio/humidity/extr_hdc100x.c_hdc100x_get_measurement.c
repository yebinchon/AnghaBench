
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct iio_chan_spec {size_t address; } ;
struct i2c_client {int dev; } ;
struct hdc100x_data {int* adc_int_us; struct i2c_client* client; } ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,size_t) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hdc100x_get_measurement(struct hdc100x_data *data,
       struct iio_chan_spec const *chan)
{
 struct i2c_client *client = data->client;
 int delay = data->adc_int_us[chan->address];
 int ret;
 __be16 val;


 ret = i2c_smbus_write_byte(client, chan->address);
 if (ret < 0) {
  dev_err(&client->dev, "cannot start measurement");
  return ret;
 }


 usleep_range(delay, delay + 1000);


 ret = i2c_master_recv(data->client, (char *)&val, sizeof(val));
 if (ret < 0) {
  dev_err(&client->dev, "cannot read sensor data\n");
  return ret;
 }
 return be16_to_cpu(val);
}
