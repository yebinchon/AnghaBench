
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; int adapter; } ;
struct emc2103_data {int temp_count; int ** groups; int update_lock; struct i2c_client* client; } ;
struct device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int REG_CONF1 ;
 int REG_PRODUCT_ID ;
 int apd ;
 int dev_dbg (int *,char*,int ,int) ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_name (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct emc2103_data*,int **) ;
 struct emc2103_data* devm_kzalloc (int *,int,int ) ;
 int emc2103_group ;
 int emc2103_temp3_group ;
 int emc2103_temp4_group ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct emc2103_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static int
emc2103_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct emc2103_data *data;
 struct device *hwmon_dev;
 int status, idx = 0;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 data = devm_kzalloc(&client->dev, sizeof(struct emc2103_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->update_lock);


 status = i2c_smbus_read_byte_data(client, REG_PRODUCT_ID);
 if (status == 0x24) {

  data->temp_count = 2;
 } else {

  status = i2c_smbus_read_byte_data(client, REG_CONF1);
  if (status < 0) {
   dev_dbg(&client->dev, "reg 0x%02x, err %d\n", REG_CONF1,
    status);
   return status;
  }


  data->temp_count = (status & 0x01) ? 4 : 3;


  if (apd == 0) {

   data->temp_count = 3;
   status &= ~(0x01);
   i2c_smbus_write_byte_data(client, REG_CONF1, status);
  } else if (apd == 1) {

   data->temp_count = 4;
   status |= 0x01;
   i2c_smbus_write_byte_data(client, REG_CONF1, status);
  }
 }


 data->groups[idx++] = &emc2103_group;
 if (data->temp_count >= 3)
  data->groups[idx++] = &emc2103_temp3_group;
 if (data->temp_count == 4)
  data->groups[idx++] = &emc2103_temp4_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          client->name, data,
          data->groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 dev_info(&client->dev, "%s: sensor '%s'\n",
   dev_name(hwmon_dev), client->name);

 return 0;
}
