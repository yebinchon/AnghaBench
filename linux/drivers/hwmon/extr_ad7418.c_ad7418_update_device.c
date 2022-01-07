
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int valid; int* temp; int adc_max; int* in; int lock; scalar_t__ last_updated; struct i2c_client* client; } ;
typedef int s32 ;


 int AD7418_CH_TEMP ;
 int AD7418_REG_ADC ;
 int AD7418_REG_ADC_CH (int) ;
 int AD7418_REG_CONF ;
 int * AD7418_REG_TEMP ;
 int HZ ;
 struct ad7418_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int i2c_smbus_write_word_swapped (struct i2c_client*,int ,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int ad7418_update_device(struct device *dev)
{
 struct ad7418_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 s32 val;

 mutex_lock(&data->lock);

 if (time_after(jiffies, data->last_updated + HZ + HZ / 2)
  || !data->valid) {
  u8 cfg;
  int i, ch;


  val = i2c_smbus_read_byte_data(client, AD7418_REG_CONF);
  if (val < 0)
   goto abort;

  cfg = val;
  cfg &= 0x1F;

  val = i2c_smbus_write_byte_data(client, AD7418_REG_CONF,
      cfg | AD7418_CH_TEMP);
  if (val < 0)
   goto abort;

  udelay(30);

  for (i = 0; i < 3; i++) {
   val = i2c_smbus_read_word_swapped(client,
         AD7418_REG_TEMP[i]);
   if (val < 0)
    goto abort;

   data->temp[i] = val;
  }

  for (i = 0, ch = 4; i < data->adc_max; i++, ch--) {
   val = i2c_smbus_write_byte_data(client, AD7418_REG_CONF,
     cfg | AD7418_REG_ADC_CH(ch));
   if (val < 0)
    goto abort;

   udelay(15);
   val = i2c_smbus_read_word_swapped(client,
         AD7418_REG_ADC);
   if (val < 0)
    goto abort;

   data->in[data->adc_max - 1 - i] = val;
  }


  val = i2c_smbus_write_word_swapped(client, AD7418_REG_CONF,
         cfg);
  if (val < 0)
   goto abort;

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->lock);
 return 0;

abort:
 data->valid = 0;
 mutex_unlock(&data->lock);
 return val;
}
