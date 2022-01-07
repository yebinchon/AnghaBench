
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht21 {int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; int adapter; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_err (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct sht21*,int ) ;
 struct sht21* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int mutex_init (int *) ;
 int sht21_groups ;

__attribute__((used)) static int sht21_probe(struct i2c_client *client,
 const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct sht21 *sht21;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_err(&client->dev,
   "adapter does not support SMBus word transactions\n");
  return -ENODEV;
 }

 sht21 = devm_kzalloc(dev, sizeof(*sht21), GFP_KERNEL);
 if (!sht21)
  return -ENOMEM;

 sht21->client = client;

 mutex_init(&sht21->lock);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          sht21, sht21_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
