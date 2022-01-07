
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; } ;
struct fts_data {struct i2c_client* client; int access_lock; int update_lock; } ;
struct device {int dummy; } ;
typedef int s8 ;


 int ENODEV ;
 int ENOMEM ;
 int FTS_DEVICE_ID_REG ;
 int FTS_DEVICE_REVISION_REG ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dev_dbg (int *,char*) ;
 int dev_info (int *,char*,int,int) ;
 int dev_set_drvdata (int *,struct fts_data*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,char*,struct fts_data*,int ) ;
 struct fts_data* devm_kzalloc (int *,int,int ) ;
 int fts_attr_groups ;
 int fts_watchdog_init (struct fts_data*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int fts_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 u8 revision;
 struct fts_data *data;
 int err;
 s8 deviceid;
 struct device *hwmon_dev;

 if (client->addr != 0x73)
  return -ENODEV;


 deviceid = i2c_smbus_read_byte_data(client, FTS_DEVICE_ID_REG);
 if (deviceid > 0 && (deviceid & 0xF0) == 0x10) {
  switch (deviceid & 0x0F) {
  case 0x01:
   break;
  default:
   dev_dbg(&client->dev,
    "No Baseboard Management Controller\n");
   return -ENODEV;
  }
 } else {
  dev_dbg(&client->dev, "No fujitsu board\n");
  return -ENODEV;
 }

 data = devm_kzalloc(&client->dev, sizeof(struct fts_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_init(&data->update_lock);
 mutex_init(&data->access_lock);
 data->client = client;
 dev_set_drvdata(&client->dev, data);

 err = i2c_smbus_read_byte_data(client, FTS_DEVICE_REVISION_REG);
 if (err < 0)
  return err;
 revision = err;

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          "ftsteutates",
          data,
          fts_attr_groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 err = fts_watchdog_init(data);
 if (err)
  return err;

 dev_info(&client->dev, "Detected FTS Teutates chip, revision: %d.%d\n",
   (revision & 0xF0) >> 4, revision & 0x0F);
 return 0;
}
