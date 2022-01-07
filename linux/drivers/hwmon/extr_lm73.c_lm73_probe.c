
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm73_data {int ctrl; int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int LM73_REG_CTRL ;
 int PTR_ERR (struct device*) ;
 int dev_info (struct device*,char*,int ) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm73_data*,int ) ;
 struct lm73_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int lm73_groups ;
 int mutex_init (int *) ;

__attribute__((used)) static int
lm73_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm73_data *data;
 int ctrl;

 data = devm_kzalloc(dev, sizeof(struct lm73_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->lock);

 ctrl = i2c_smbus_read_byte_data(client, LM73_REG_CTRL);
 if (ctrl < 0)
  return ctrl;
 data->ctrl = ctrl;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, lm73_groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 dev_info(dev, "sensor '%s'\n", client->name);

 return 0;
}
