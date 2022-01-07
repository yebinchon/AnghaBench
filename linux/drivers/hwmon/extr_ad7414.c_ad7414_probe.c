
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; int adapter; } ;
struct ad7414_data {int lock; struct i2c_client* client; } ;


 int AD7414_REG_CONF ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int ad7414_groups ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct ad7414_data*,int ) ;
 struct ad7414_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (int ,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ad7414_probe(struct i2c_client *client,
   const struct i2c_device_id *dev_id)
{
 struct device *dev = &client->dev;
 struct ad7414_data *data;
 struct device *hwmon_dev;
 int conf;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_READ_WORD_DATA))
  return -EOPNOTSUPP;

 data = devm_kzalloc(dev, sizeof(struct ad7414_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->lock);

 dev_info(&client->dev, "chip found\n");


 conf = i2c_smbus_read_byte_data(client, AD7414_REG_CONF);
 if (conf < 0)
  dev_warn(dev, "ad7414_probe unable to read config register.\n");
 else {
  conf &= ~(1 << 7);
  i2c_smbus_write_byte_data(client, AD7414_REG_CONF, conf);
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(dev,
          client->name,
          data, ad7414_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
