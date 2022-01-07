
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp401_data {size_t kind; int ** groups; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dev_info (struct device*,char*,char const* const) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct tmp401_data*,int **) ;
 struct tmp401_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int tmp401_group ;
 int tmp401_init_client (struct tmp401_data*,struct i2c_client*) ;
 size_t tmp411 ;
 int tmp411_group ;
 size_t tmp432 ;
 int tmp432_group ;
 size_t tmp461 ;
 int tmp461_group ;

__attribute__((used)) static int tmp401_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 static const char * const names[] = {
  "TMP401", "TMP411", "TMP431", "TMP432", "TMP435", "TMP461"
 };
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct tmp401_data *data;
 int groups = 0, status;

 data = devm_kzalloc(dev, sizeof(struct tmp401_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);
 data->kind = id->driver_data;


 status = tmp401_init_client(data, client);
 if (status < 0)
  return status;


 data->groups[groups++] = &tmp401_group;


 if (data->kind == tmp411)
  data->groups[groups++] = &tmp411_group;


 if (data->kind == tmp432)
  data->groups[groups++] = &tmp432_group;

 if (data->kind == tmp461)
  data->groups[groups++] = &tmp461_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 dev_info(dev, "Detected TI %s chip\n", names[data->kind]);

 return 0;
}
