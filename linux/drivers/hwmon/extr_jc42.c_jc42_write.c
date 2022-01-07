
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jc42_data {int* temp; int config; int update_lock; struct i2c_client* client; int extended; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;


 int EOPNOTSUPP ;
 int JC42_CFG_HYST_MASK ;
 int JC42_CFG_HYST_SHIFT ;
 int JC42_REG_CONFIG ;
 int JC42_TEMP_MAX ;
 int JC42_TEMP_MIN ;
 int JC42_TEMP_MIN_EXTENDED ;
 long clamp_val (long,int ,int ) ;
 struct jc42_data* dev_get_drvdata (struct device*) ;




 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 int jc42_temp_from_reg (int) ;
 void* jc42_temp_to_reg (long,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t t_crit ;
 size_t t_max ;
 size_t t_min ;
 int * temp_regs ;

__attribute__((used)) static int jc42_write(struct device *dev, enum hwmon_sensor_types type,
        u32 attr, int channel, long val)
{
 struct jc42_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int diff, hyst;
 int ret;

 mutex_lock(&data->update_lock);

 switch (attr) {
 case 128:
  data->temp[t_min] = jc42_temp_to_reg(val, data->extended);
  ret = i2c_smbus_write_word_swapped(client, temp_regs[t_min],
         data->temp[t_min]);
  break;
 case 129:
  data->temp[t_max] = jc42_temp_to_reg(val, data->extended);
  ret = i2c_smbus_write_word_swapped(client, temp_regs[t_max],
         data->temp[t_max]);
  break;
 case 131:
  data->temp[t_crit] = jc42_temp_to_reg(val, data->extended);
  ret = i2c_smbus_write_word_swapped(client, temp_regs[t_crit],
         data->temp[t_crit]);
  break;
 case 130:




  val = clamp_val(val, (data->extended ? JC42_TEMP_MIN_EXTENDED
           : JC42_TEMP_MIN) - 6000,
    JC42_TEMP_MAX);
  diff = jc42_temp_from_reg(data->temp[t_crit]) - val;
  hyst = 0;
  if (diff > 0) {
   if (diff < 2250)
    hyst = 1;
   else if (diff < 4500)
    hyst = 2;
   else
    hyst = 3;
  }
  data->config = (data->config & ~JC42_CFG_HYST_MASK) |
    (hyst << JC42_CFG_HYST_SHIFT);
  ret = i2c_smbus_write_word_swapped(data->client,
         JC42_REG_CONFIG,
         data->config);
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 mutex_unlock(&data->update_lock);

 return ret;
}
