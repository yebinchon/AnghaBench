
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct gl518_data {scalar_t__ type; int alarm_mask; int ** groups; int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GL518_REG_REVISION ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct gl518_data*,int **) ;
 struct gl518_data* devm_kzalloc (struct device*,int,int ) ;
 int gl518_group ;
 int gl518_group_r80 ;
 int gl518_init_client (struct i2c_client*) ;
 int gl518_read_value (struct i2c_client*,int ) ;
 scalar_t__ gl518sm_r00 ;
 scalar_t__ gl518sm_r80 ;
 int mutex_init (int *) ;

__attribute__((used)) static int gl518_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct gl518_data *data;
 int revision;

 data = devm_kzalloc(dev, sizeof(struct gl518_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 revision = gl518_read_value(client, GL518_REG_REVISION);
 data->type = revision == 0x80 ? gl518sm_r80 : gl518sm_r00;
 mutex_init(&data->update_lock);


 data->alarm_mask = 0xff;
 gl518_init_client(client);


 data->groups[0] = &gl518_group;
 if (data->type == gl518sm_r80)
  data->groups[1] = &gl518_group_r80;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
