
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct lm75_data {int kind; TYPE_1__* params; int sample_time; int client; int regmap; int resolution; } ;
struct device {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int * sample_times; int * resolutions; scalar_t__ num_sample_times; } ;


 int LM75_REG_CONF ;
 int LM75_SAMPLE_CLEAR_MASK ;
 int PCT2075_REG_IDLE ;
 struct lm75_data* dev_get_drvdata (struct device*) ;
 size_t find_closest (long,int *,int) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int * lm75_sample_set_masks ;
 int lm75_write_config (struct lm75_data*,int ,int ) ;

 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;


__attribute__((used)) static int lm75_update_interval(struct device *dev, long val)
{
 struct lm75_data *data = dev_get_drvdata(dev);
 unsigned int reg;
 u8 index;
 s32 err;

 index = find_closest(val, data->params->sample_times,
        (int)data->params->num_sample_times);

 switch (data->kind) {
 default:
  err = lm75_write_config(data, lm75_sample_set_masks[index],
     LM75_SAMPLE_CLEAR_MASK);
  if (err)
   return err;

  data->sample_time = data->params->sample_times[index];
  if (data->params->resolutions)
   data->resolution = data->params->resolutions[index];
  break;
 case 128:
  err = regmap_read(data->regmap, LM75_REG_CONF, &reg);
  if (err < 0)
   return err;
  reg &= ~0x00c0;
  reg |= (3 - index) << 6;
  err = regmap_write(data->regmap, LM75_REG_CONF, reg);
  if (err < 0)
   return err;
  data->sample_time = data->params->sample_times[index];
  break;
 case 129:
  err = i2c_smbus_write_byte_data(data->client, PCT2075_REG_IDLE,
      index + 1);
  if (err)
   return err;
  data->sample_time = data->params->sample_times[index];
  break;
 }
 return 0;
}
