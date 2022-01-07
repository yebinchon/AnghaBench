
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m192_data {int ** groups; int update_lock; int vrm; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int SMSC47M192_REG_CONFIG ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct smsc47m192_data*,int **) ;
 struct smsc47m192_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 int smsc47m192_group ;
 int smsc47m192_group_in4 ;
 int smsc47m192_init_client (struct i2c_client*) ;
 int vid_which_vrm () ;

__attribute__((used)) static int smsc47m192_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct smsc47m192_data *data;
 int config;

 data = devm_kzalloc(dev, sizeof(struct smsc47m192_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 data->vrm = vid_which_vrm();
 mutex_init(&data->update_lock);


 smsc47m192_init_client(client);


 data->groups[0] = &smsc47m192_group;

 config = i2c_smbus_read_byte_data(client, SMSC47M192_REG_CONFIG);
 if (!(config & 0x20))
  data->groups[1] = &smsc47m192_group_in4;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
