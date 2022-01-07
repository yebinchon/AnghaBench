
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;
struct hih6130 {int write_length; int lock; struct i2c_client* client; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_QUICK ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_err (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct hih6130*,int ) ;
 struct hih6130* devm_kzalloc (struct device*,int,int ) ;
 int hih6130_groups ;
 int i2c_check_functionality (int ,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int hih6130_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct hih6130 *hih6130;
 struct device *hwmon_dev;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  dev_err(&client->dev, "adapter does not support true I2C\n");
  return -ENODEV;
 }

 hih6130 = devm_kzalloc(dev, sizeof(*hih6130), GFP_KERNEL);
 if (!hih6130)
  return -ENOMEM;

 hih6130->client = client;
 mutex_init(&hih6130->lock);

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_QUICK))
  hih6130->write_length = 1;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          hih6130,
          hih6130_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
