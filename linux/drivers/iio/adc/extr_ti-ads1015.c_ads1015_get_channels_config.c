
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ads1015_platform_data {int channel_data; } ;
struct ads1015_data {TYPE_1__* channel_data; } ;
struct TYPE_2__ {int data_rate; int pga; } ;


 unsigned int ADS1015_CHANNELS ;
 int ADS1015_DEFAULT_DATA_RATE ;
 int ADS1015_DEFAULT_PGA ;
 int ads1015_get_channels_config_of (struct i2c_client*) ;
 struct ads1015_platform_data* dev_get_platdata (int *) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int memcpy (TYPE_1__*,int ,int) ;

__attribute__((used)) static void ads1015_get_channels_config(struct i2c_client *client)
{
 unsigned int k;

 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ads1015_data *data = iio_priv(indio_dev);
 struct ads1015_platform_data *pdata = dev_get_platdata(&client->dev);


 if (pdata) {
  memcpy(data->channel_data, pdata->channel_data,
         sizeof(data->channel_data));
  return;
 }






 for (k = 0; k < ADS1015_CHANNELS; ++k) {
  data->channel_data[k].pga = ADS1015_DEFAULT_PGA;
  data->channel_data[k].data_rate = ADS1015_DEFAULT_DATA_RATE;
 }
}
