
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm87_data {int* in_scale; int channel; int ** attr_groups; int vrm; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; } ;
struct device {int dummy; } ;


 int CHAN_NO_FAN (int) ;
 int CHAN_NO_VID ;
 int CHAN_TEMP3 ;
 int CHAN_VCC_5V ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct i2c_client*,int **) ;
 struct lm87_data* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct lm87_data*) ;
 int lm87_group ;
 int lm87_group_fan1 ;
 int lm87_group_fan2 ;
 int lm87_group_in0_5 ;
 int lm87_group_in6 ;
 int lm87_group_in7 ;
 int lm87_group_temp3 ;
 int lm87_group_vid ;
 int lm87_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;
 int vid_which_vrm () ;

__attribute__((used)) static int lm87_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct lm87_data *data;
 struct device *hwmon_dev;
 int err;
 unsigned int group_tail = 0;

 data = devm_kzalloc(&client->dev, sizeof(struct lm87_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 err = lm87_init_client(client);
 if (err)
  return err;

 data->in_scale[0] = 2500;
 data->in_scale[1] = 2700;
 data->in_scale[2] = (data->channel & CHAN_VCC_5V) ? 5000 : 3300;
 data->in_scale[3] = 5000;
 data->in_scale[4] = 12000;
 data->in_scale[5] = 2700;
 data->in_scale[6] = 1875;
 data->in_scale[7] = 1875;





 data->attr_groups[group_tail++] = &lm87_group;
 if (data->channel & CHAN_NO_FAN(0))
  data->attr_groups[group_tail++] = &lm87_group_in6;
 else
  data->attr_groups[group_tail++] = &lm87_group_fan1;

 if (data->channel & CHAN_NO_FAN(1))
  data->attr_groups[group_tail++] = &lm87_group_in7;
 else
  data->attr_groups[group_tail++] = &lm87_group_fan2;

 if (data->channel & CHAN_TEMP3)
  data->attr_groups[group_tail++] = &lm87_group_temp3;
 else
  data->attr_groups[group_tail++] = &lm87_group_in0_5;

 if (!(data->channel & CHAN_NO_VID)) {
  data->vrm = vid_which_vrm();
  data->attr_groups[group_tail++] = &lm87_group_vid;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(
     &client->dev, client->name, client, data->attr_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
