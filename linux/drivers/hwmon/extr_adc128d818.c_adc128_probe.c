
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int of_node; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; struct regulator dev; } ;
struct device {int of_node; } ;
struct adc128_data {int vref; int mode; struct regulator* regulator; int update_lock; struct i2c_client* client; } ;


 int ADC128_REG_CONFIG_ADV ;
 int ADC128_REG_MASK ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator*) ;
 int PTR_ERR (struct regulator*) ;
 int adc128_groups ;
 int adc128_init_client (struct adc128_data*) ;
 int dev_err (struct regulator*,char*,int) ;
 struct regulator* devm_hwmon_device_register_with_groups (struct regulator*,int ,struct adc128_data*,int ) ;
 struct adc128_data* devm_kzalloc (struct regulator*,int,int ) ;
 struct regulator* devm_regulator_get_optional (struct regulator*,char*) ;
 int i2c_set_clientdata (struct i2c_client*,struct adc128_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_u8 (int ,char*,int*) ;
 int regulator_disable (struct regulator*) ;
 int regulator_enable (struct regulator*) ;
 int regulator_get_voltage (struct regulator*) ;

__attribute__((used)) static int adc128_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct regulator *regulator;
 struct device *hwmon_dev;
 struct adc128_data *data;
 int err, vref;

 data = devm_kzalloc(dev, sizeof(struct adc128_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 regulator = devm_regulator_get_optional(dev, "vref");
 if (!IS_ERR(regulator)) {
  data->regulator = regulator;
  err = regulator_enable(regulator);
  if (err < 0)
   return err;
  vref = regulator_get_voltage(regulator);
  if (vref < 0) {
   err = vref;
   goto error;
  }
  data->vref = DIV_ROUND_CLOSEST(vref, 1000);
 } else {
  data->vref = 2560;
 }


 if (of_property_read_u8(dev->of_node, "ti,mode", &data->mode) == 0) {
  if (data->mode > 3) {
   dev_err(dev, "invalid operation mode %d\n",
    data->mode);
   err = -EINVAL;
   goto error;
  }
 } else {
  err = i2c_smbus_read_byte_data(client, ADC128_REG_CONFIG_ADV);
  if (err < 0)
   goto error;
  data->mode = (err >> 1) & ADC128_REG_MASK;
 }

 data->client = client;
 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 err = adc128_init_client(data);
 if (err < 0)
  goto error;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, adc128_groups);
 if (IS_ERR(hwmon_dev)) {
  err = PTR_ERR(hwmon_dev);
  goto error;
 }

 return 0;

error:
 if (data->regulator)
  regulator_disable(data->regulator);
 return err;
}
