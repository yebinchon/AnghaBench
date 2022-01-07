
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jc42_data {int extended; int orig_config; int config; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int JC42_CAP_RANGE ;
 int JC42_CFG_SHUTDOWN ;
 int JC42_REG_CAP ;
 int JC42_REG_CONFIG ;
 int JC42_REG_SMBUS ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SMBUS_STMOUT ;
 scalar_t__ device_property_read_bool (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct jc42_data*,int *,int *) ;
 struct jc42_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct jc42_data*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 int jc42_chip_info ;
 int mutex_init (int *) ;

__attribute__((used)) static int jc42_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct jc42_data *data;
 int config, cap;

 data = devm_kzalloc(dev, sizeof(struct jc42_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);

 cap = i2c_smbus_read_word_swapped(client, JC42_REG_CAP);
 if (cap < 0)
  return cap;

 data->extended = !!(cap & JC42_CAP_RANGE);

 if (device_property_read_bool(dev, "smbus-timeout-disable")) {
  int smbus;







  smbus = i2c_smbus_read_word_swapped(client, JC42_REG_SMBUS);
  if (smbus < 0)
   return smbus;
  i2c_smbus_write_word_swapped(client, JC42_REG_SMBUS,
          smbus | SMBUS_STMOUT);
 }

 config = i2c_smbus_read_word_swapped(client, JC42_REG_CONFIG);
 if (config < 0)
  return config;

 data->orig_config = config;
 if (config & JC42_CFG_SHUTDOWN) {
  config &= ~JC42_CFG_SHUTDOWN;
  i2c_smbus_write_word_swapped(client, JC42_REG_CONFIG, config);
 }
 data->config = config;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        data, &jc42_chip_info,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
