
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm80_data {int** fan; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LM80_REG_FAN_MIN (int) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm80_data*,int ) ;
 struct lm80_data* devm_kzalloc (struct device*,int,int ) ;
 size_t f_min ;
 int lm80_groups ;
 int lm80_init_client (struct i2c_client*) ;
 int lm80_read_value (struct i2c_client*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm80_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm80_data *data;
 int rv;

 data = devm_kzalloc(dev, sizeof(struct lm80_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 lm80_init_client(client);


 rv = lm80_read_value(client, LM80_REG_FAN_MIN(1));
 if (rv < 0)
  return rv;
 data->fan[f_min][0] = rv;
 rv = lm80_read_value(client, LM80_REG_FAN_MIN(2));
 if (rv < 0)
  return rv;
 data->fan[f_min][1] = rv;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, lm80_groups);

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
