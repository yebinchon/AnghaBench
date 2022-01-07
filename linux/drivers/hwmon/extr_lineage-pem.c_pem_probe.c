
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pem_data {int fans_supported; int ** groups; scalar_t__* fan_speed; int input_length; scalar_t__* input_string; scalar_t__* firmware_rev; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_WRITE_BYTE ;
 int PEM_CLEAR_INFO_FLAGS ;
 int PEM_READ_FAN_SPEED ;
 int PEM_READ_FIRMWARE_REV ;
 int PEM_READ_INPUT_STRING ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_info (struct device*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct pem_data*,int **) ;
 struct pem_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int) ;
 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 int pem_fan_group ;
 int pem_group ;
 int pem_input_group ;
 int pem_read_block (struct i2c_client*,int ,scalar_t__*,int) ;

__attribute__((used)) static int pem_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct pem_data *data;
 int ret, idx = 0;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BLOCK_DATA
         | I2C_FUNC_SMBUS_WRITE_BYTE))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);





 ret = pem_read_block(client, PEM_READ_FIRMWARE_REV,
        data->firmware_rev, sizeof(data->firmware_rev));
 if (ret < 0)
  return ret;

 ret = i2c_smbus_write_byte(client, PEM_CLEAR_INFO_FLAGS);
 if (ret < 0)
  return ret;

 dev_info(dev, "Firmware revision %d.%d.%d\n",
   data->firmware_rev[0], data->firmware_rev[1],
   data->firmware_rev[2]);


 data->groups[idx++] = &pem_group;







 ret = pem_read_block(client, PEM_READ_INPUT_STRING,
        data->input_string,
        sizeof(data->input_string) - 1);
 if (!ret && (data->input_string[0] || data->input_string[1] ||
       data->input_string[2]))
  data->input_length = sizeof(data->input_string) - 1;
 else if (ret < 0) {

  ret = pem_read_block(client, PEM_READ_INPUT_STRING,
        data->input_string,
        sizeof(data->input_string));
  if (!ret && (data->input_string[0] || data->input_string[1] ||
       data->input_string[2] || data->input_string[3]))
   data->input_length = sizeof(data->input_string);
 }

 if (data->input_length)
  data->groups[idx++] = &pem_input_group;







 ret = pem_read_block(client, PEM_READ_FAN_SPEED,
        data->fan_speed,
        sizeof(data->fan_speed));
 if (!ret && (data->fan_speed[0] || data->fan_speed[1] ||
       data->fan_speed[2] || data->fan_speed[3])) {
  data->fans_supported = 1;
  data->groups[idx++] = &pem_fan_group;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
