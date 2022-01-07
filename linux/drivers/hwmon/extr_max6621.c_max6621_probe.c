
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6621_data {int* input_chan2reg; int regmap; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX6621_CONFIG0_INIT ;
 int MAX6621_CONFIG0_REG ;
 int MAX6621_CONFIG1_INIT ;
 int MAX6621_CONFIG1_REG ;
 int MAX6621_TEMP_INPUT_REG_NUM ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct max6621_data*,int *,int *) ;
 struct max6621_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct max6621_data*) ;
 int i2c_smbus_read_word_data (struct i2c_client*,int) ;
 int max6621_chip_info ;
 int max6621_regmap_config ;
 int* max6621_temp_regs ;
 int max6621_verify_reg_data (struct device*,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int max6621_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct max6621_data *data;
 struct device *hwmon_dev;
 int i;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regmap = devm_regmap_init_i2c(client, &max6621_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 i2c_set_clientdata(client, data);
 data->client = client;


 ret = regmap_write(data->regmap, MAX6621_CONFIG0_REG,
      MAX6621_CONFIG0_INIT);
 if (ret)
  return ret;


 ret = regmap_write(data->regmap, MAX6621_CONFIG1_REG,
      MAX6621_CONFIG1_INIT);
 if (ret)
  return ret;


 regcache_mark_dirty(data->regmap);
 ret = regcache_sync(data->regmap);
 if (ret)
  return ret;


 for (i = 0; i < MAX6621_TEMP_INPUT_REG_NUM; i++) {
  ret = i2c_smbus_read_word_data(client, max6621_temp_regs[i]);
  if (ret < 0)
   return ret;
  ret = max6621_verify_reg_data(dev, ret);
  if (ret) {
   data->input_chan2reg[i] = -1;
   continue;
  }

  data->input_chan2reg[i] = max6621_temp_regs[i];
 }

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        data,
        &max6621_chip_info,
        ((void*)0));

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
