
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmbus_driver_info {int dummy; } ;
struct i2c_device_id {int name; } ;
struct device {int dummy; } ;
struct i2c_client {int adapter; struct device dev; } ;
typedef scalar_t__ s64 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ MAX31785 ;
 scalar_t__ MAX31785A ;
 int MFR_REVISION ;
 int PMBUS_PAGE ;
 int dev_warn (struct device*,char*) ;
 struct pmbus_driver_info* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (int ,int) ;
 scalar_t__ i2c_smbus_read_word_data (struct i2c_client*,int ) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 scalar_t__ max31785_configure_dual_tach (struct i2c_client*,struct pmbus_driver_info*) ;
 struct pmbus_driver_info max31785_info ;
 int pmbus_do_probe (struct i2c_client*,struct i2c_device_id const*,struct pmbus_driver_info*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int max31785_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct pmbus_driver_info *info;
 bool dual_tach = 0;
 s64 ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE_DATA |
         I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 info = devm_kzalloc(dev, sizeof(struct pmbus_driver_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 *info = max31785_info;

 ret = i2c_smbus_write_byte_data(client, PMBUS_PAGE, 255);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_word_data(client, MFR_REVISION);
 if (ret < 0)
  return ret;

 if (ret == MAX31785A) {
  dual_tach = 1;
 } else if (ret == MAX31785) {
  if (!strcmp("max31785a", id->name))
   dev_warn(dev, "Expected max3175a, found max31785: cannot provide secondary tachometer readings\n");
 } else {
  return -ENODEV;
 }

 if (dual_tach) {
  ret = max31785_configure_dual_tach(client, info);
  if (ret < 0)
   return ret;
 }

 return pmbus_do_probe(client, id, info);
}
