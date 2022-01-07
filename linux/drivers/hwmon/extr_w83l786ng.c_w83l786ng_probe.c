
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83l786ng_data {int* fan_div; void** fan_min; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int W83L786NG_REG_FAN_DIV ;
 int W83L786NG_REG_FAN_MIN (int) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct w83l786ng_data*,int ) ;
 struct w83l786ng_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int w83l786ng_groups ;
 int w83l786ng_init_client (struct i2c_client*) ;
 void* w83l786ng_read_value (struct i2c_client*,int ) ;

__attribute__((used)) static int
w83l786ng_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct w83l786ng_data *data;
 struct device *hwmon_dev;
 int i;
 u8 reg_tmp;

 data = devm_kzalloc(dev, sizeof(struct w83l786ng_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 w83l786ng_init_client(client);


 for (i = 0; i < 2; i++) {
  data->fan_min[i] = w83l786ng_read_value(client,
      W83L786NG_REG_FAN_MIN(i));
 }


 reg_tmp = w83l786ng_read_value(client, W83L786NG_REG_FAN_DIV);
 data->fan_div[0] = reg_tmp & 0x07;
 data->fan_div[1] = (reg_tmp >> 4) & 0x07;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          w83l786ng_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
