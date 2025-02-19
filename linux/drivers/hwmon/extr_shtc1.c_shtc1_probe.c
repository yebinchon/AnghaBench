
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct shtc1_platform_data {int blocking_io; int high_precision; } ;
struct shtc1_data {int chip; int update_lock; struct shtc1_platform_data setup; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ platform_data; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef int id_reg_buf ;
typedef enum shtcx_chips { ____Placeholder_shtcx_chips } shtcx_chips ;
typedef int __be16 ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SHTC1_CMD_LENGTH ;
 int SHTC1_ID ;
 int SHTC1_ID_MASK ;
 int SHTC3_ID ;
 int SHTC3_ID_MASK ;
 int be16_to_cpup (int *) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct shtc1_data*,int ) ;
 struct shtc1_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_master_recv (struct i2c_client*,char*,int) ;
 int i2c_master_send (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;
 int shtc1_cmd_read_id_reg ;
 int shtc1_groups ;
 int shtc1_select_command (struct shtc1_data*) ;
 int shtc3 ;

__attribute__((used)) static int shtc1_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 int ret;
 u16 id_reg;
 char id_reg_buf[2];
 struct shtc1_data *data;
 struct device *hwmon_dev;
 enum shtcx_chips chip = id->driver_data;
 struct i2c_adapter *adap = client->adapter;
 struct device *dev = &client->dev;

 if (!i2c_check_functionality(adap, I2C_FUNC_I2C)) {
  dev_err(dev, "plain i2c transactions not supported\n");
  return -ENODEV;
 }

 ret = i2c_master_send(client, shtc1_cmd_read_id_reg, SHTC1_CMD_LENGTH);
 if (ret != SHTC1_CMD_LENGTH) {
  dev_err(dev, "could not send read_id_reg command: %d\n", ret);
  return ret < 0 ? ret : -ENODEV;
 }
 ret = i2c_master_recv(client, id_reg_buf, sizeof(id_reg_buf));
 if (ret != sizeof(id_reg_buf)) {
  dev_err(dev, "could not read ID register: %d\n", ret);
  return -ENODEV;
 }

 id_reg = be16_to_cpup((__be16 *)id_reg_buf);
 if (chip == shtc3) {
  if ((id_reg & SHTC3_ID_MASK) != SHTC3_ID) {
   dev_err(dev, "SHTC3 ID register does not match\n");
   return -ENODEV;
  }
 } else if ((id_reg & SHTC1_ID_MASK) != SHTC1_ID) {
  dev_err(dev, "SHTC1 ID register does not match\n");
  return -ENODEV;
 }

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->setup.blocking_io = 0;
 data->setup.high_precision = 1;
 data->client = client;
 data->chip = chip;

 if (client->dev.platform_data)
  data->setup = *(struct shtc1_platform_data *)dev->platform_data;
 shtc1_select_command(data);
 mutex_init(&data->update_lock);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev,
          client->name,
          data,
          shtc1_groups);
 if (IS_ERR(hwmon_dev))
  dev_dbg(dev, "unable to register hwmon device\n");

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
