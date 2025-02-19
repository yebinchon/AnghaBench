
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_sensor_settings {int dummy; } ;
struct st_sensor_data {struct st_sensor_settings* sensor_settings; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int dev_err (int *,char*,int ) ;
 char* device_get_match_data (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int st_accel_common_probe (struct iio_dev*) ;
 struct st_sensor_settings* st_accel_get_settings (int ) ;
 int st_sensors_i2c_configure (struct iio_dev*,struct i2c_client*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int st_accel_i2c_probe(struct i2c_client *client)
{
 const struct st_sensor_settings *settings;
 struct st_sensor_data *adata;
 struct iio_dev *indio_dev;
 const char *match;
 int ret;

 match = device_get_match_data(&client->dev);
 if (match)
  strlcpy(client->name, match, sizeof(client->name));

 settings = st_accel_get_settings(client->name);
 if (!settings) {
  dev_err(&client->dev, "device name %s not recognized.\n",
   client->name);
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&client->dev, sizeof(*adata));
 if (!indio_dev)
  return -ENOMEM;

 adata = iio_priv(indio_dev);
 adata->sensor_settings = (struct st_sensor_settings *)settings;

 ret = st_sensors_i2c_configure(indio_dev, client);
 if (ret < 0)
  return ret;

 ret = st_accel_common_probe(indio_dev);
 if (ret < 0)
  return ret;

 return 0;
}
