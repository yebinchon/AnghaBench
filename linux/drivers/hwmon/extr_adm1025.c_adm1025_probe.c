
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adm1025_data {int ** groups; int update_lock; struct i2c_client* client; } ;


 int ADM1025_REG_CONFIG ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int adm1025_group ;
 int adm1025_group_in4 ;
 int adm1025_init_client (struct i2c_client*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adm1025_data*,int **) ;
 struct adm1025_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1025_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adm1025_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct adm1025_data *data;
 u8 config;

 data = devm_kzalloc(dev, sizeof(struct adm1025_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->update_lock);


 adm1025_init_client(client);


 data->groups[0] = &adm1025_group;

 config = i2c_smbus_read_byte_data(client, ADM1025_REG_CONFIG);
 if (!(config & 0x20))
  data->groups[1] = &adm1025_group_in4;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
