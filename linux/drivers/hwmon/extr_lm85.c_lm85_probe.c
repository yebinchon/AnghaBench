
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lm85_data {int type; int has_vid5; int ** groups; int vrm; void* freq_map_size; void* freq_map; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int name; struct device dev; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LM85_REG_VID ;
 int PTR_ERR_OR_ZERO (struct device*) ;

 void* adm1027_freq_map ;


 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm85_data*,int **) ;
 struct lm85_data* devm_kzalloc (struct device*,int,int ) ;




 void* lm85_freq_map ;
 int lm85_group ;
 int lm85_group_in4 ;
 int lm85_group_in567 ;
 int lm85_group_minctl ;
 int lm85_group_temp_off ;
 int lm85_init_client (struct i2c_client*) ;
 int lm85_read_value (struct i2c_client*,int ) ;

 void* lm96000_freq_map ;
 int mutex_init (int *) ;
 scalar_t__ of_device_get_match_data (struct device*) ;
 int vid_which_vrm () ;

__attribute__((used)) static int lm85_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm85_data *data;
 int idx = 0;

 data = devm_kzalloc(dev, sizeof(struct lm85_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 if (client->dev.of_node)
  data->type = (enum chips)of_device_get_match_data(&client->dev);
 else
  data->type = id->driver_data;
 mutex_init(&data->update_lock);


 switch (data->type) {
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
  data->freq_map = adm1027_freq_map;
  data->freq_map_size = ARRAY_SIZE(adm1027_freq_map);
  break;
 case 128:
  data->freq_map = lm96000_freq_map;
  data->freq_map_size = ARRAY_SIZE(lm96000_freq_map);
  break;
 default:
  data->freq_map = lm85_freq_map;
  data->freq_map_size = ARRAY_SIZE(lm85_freq_map);
 }


 data->vrm = vid_which_vrm();


 lm85_init_client(client);


 data->groups[idx++] = &lm85_group;


 if (data->type != 129) {
  data->groups[idx++] = &lm85_group_minctl;
  data->groups[idx++] = &lm85_group_temp_off;
 }





 if (data->type == 134 || data->type == 133) {
  u8 vid = lm85_read_value(client, LM85_REG_VID);
  if (vid & 0x80)
   data->has_vid5 = 1;
 }

 if (!data->has_vid5)
  data->groups[idx++] = &lm85_group_in4;


 if (data->type == 132)
  data->groups[idx++] = &lm85_group_in567;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
