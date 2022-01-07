
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm93_data {void (* update ) (struct lm93_data*,struct i2c_client*) ;int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LM93_SMBUS_FUNC_FULL ;
 int LM93_SMBUS_FUNC_MIN ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_dbg (struct device*,char*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm93_data*,int ) ;
 struct lm93_data* devm_kzalloc (struct device*,int,int ) ;
 int disable_block ;
 int i2c_get_functionality (int ) ;
 int lm93_groups ;
 int lm93_init_client (struct i2c_client*) ;
 void lm93_update_client_full (struct lm93_data*,struct i2c_client*) ;
 void lm93_update_client_min (struct lm93_data*,struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm93_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct lm93_data *data;
 struct device *hwmon_dev;
 int func;
 void (*update)(struct lm93_data *, struct i2c_client *);


 func = i2c_get_functionality(client->adapter);
 if (((LM93_SMBUS_FUNC_FULL & func) == LM93_SMBUS_FUNC_FULL) &&
   (!disable_block)) {
  dev_dbg(dev, "using SMBus block data transactions\n");
  update = lm93_update_client_full;
 } else if ((LM93_SMBUS_FUNC_MIN & func) == LM93_SMBUS_FUNC_MIN) {
  dev_dbg(dev, "disabled SMBus block data transactions\n");
  update = lm93_update_client_min;
 } else {
  dev_dbg(dev, "detect failed, smbus byte and/or word data not supported!\n");
  return -ENODEV;
 }

 data = devm_kzalloc(dev, sizeof(struct lm93_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 data->client = client;
 data->update = update;
 mutex_init(&data->update_lock);


 lm93_init_client(client);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          lm93_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
