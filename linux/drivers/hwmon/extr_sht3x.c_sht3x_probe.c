
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht3x_platform_data {int blocking_io; int high_precision; } ;
struct sht3x_data {int data_lock; int i2c_lock; struct sht3x_platform_data setup; struct i2c_client* client; scalar_t__ last_update; scalar_t__ mode; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {scalar_t__ platform_data; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct attribute_group {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SHT3X_CMD_LENGTH ;
 int SHT3X_CRC8_POLYNOMIAL ;
 int crc8_populate_msb (int ,int ) ;
 int dev_dbg (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct sht3x_data*,struct attribute_group const**) ;
 struct sht3x_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 scalar_t__ jiffies ;
 int limits_update (struct sht3x_data*) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int mutex_init (int *) ;
 int sht3x_cmd_clear_status_reg ;
 int sht3x_crc8_table ;
 struct attribute_group** sht3x_groups ;
 int sht3x_select_command (struct sht3x_data*) ;
 scalar_t__ sts3x ;
 struct attribute_group** sts3x_groups ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sht3x_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 int ret;
 struct sht3x_data *data;
 struct device *hwmon_dev;
 struct i2c_adapter *adap = client->adapter;
 struct device *dev = &client->dev;
 const struct attribute_group **attribute_groups;






 if (!i2c_check_functionality(adap, I2C_FUNC_I2C))
  return -ENODEV;

 ret = i2c_master_send(client, sht3x_cmd_clear_status_reg,
         SHT3X_CMD_LENGTH);
 if (ret != SHT3X_CMD_LENGTH)
  return ret < 0 ? ret : -ENODEV;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->setup.blocking_io = 0;
 data->setup.high_precision = 1;
 data->mode = 0;
 data->last_update = jiffies - msecs_to_jiffies(3000);
 data->client = client;
 crc8_populate_msb(sht3x_crc8_table, SHT3X_CRC8_POLYNOMIAL);

 if (client->dev.platform_data)
  data->setup = *(struct sht3x_platform_data *)dev->platform_data;

 sht3x_select_command(data);

 mutex_init(&data->i2c_lock);
 mutex_init(&data->data_lock);






 usleep_range(500, 600);

 ret = limits_update(data);
 if (ret)
  return ret;

 if (id->driver_data == sts3x)
  attribute_groups = sts3x_groups;
 else
  attribute_groups = sht3x_groups;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev,
          client->name,
          data,
          attribute_groups);

 if (IS_ERR(hwmon_dev))
  dev_dbg(dev, "unable to register hwmon device\n");

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
