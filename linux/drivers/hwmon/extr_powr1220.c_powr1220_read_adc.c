
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powr1220_data {int* adc_valid; int* adc_maxes; int* adc_values; int update_lock; scalar_t__* adc_last_updated; int client; } ;
struct device {int dummy; } ;


 int ADC_MAX_LOW_MEASUREMENT_MV ;
 int ADC_MUX ;
 int ADC_STEP_MV ;
 int ADC_VALUE_HIGH ;
 int ADC_VALUE_LOW ;
 scalar_t__ HZ ;
 struct powr1220_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int powr1220_read_adc(struct device *dev, int ch_num)
{
 struct powr1220_data *data = dev_get_drvdata(dev);
 int reading;
 int result;
 int adc_range = 0;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->adc_last_updated[ch_num] + HZ) ||
   !data->adc_valid[ch_num]) {






  if (data->adc_maxes[ch_num] > ADC_MAX_LOW_MEASUREMENT_MV ||
    data->adc_maxes[ch_num] == 0)
   adc_range = 1 << 4;


  result = i2c_smbus_write_byte_data(data->client, ADC_MUX,
    adc_range | ch_num);
  if (result)
   goto exit;





  udelay(200);


  result = i2c_smbus_read_byte_data(data->client, ADC_VALUE_LOW);
  if (result < 0)
   goto exit;

  reading = result >> 4;


  result = i2c_smbus_read_byte_data(data->client, ADC_VALUE_HIGH);
  if (result < 0)
   goto exit;

  reading |= result << 4;


  reading *= ADC_STEP_MV;
  data->adc_values[ch_num] = reading;
  data->adc_valid[ch_num] = 1;
  data->adc_last_updated[ch_num] = jiffies;
  result = reading;

  if (reading > data->adc_maxes[ch_num])
   data->adc_maxes[ch_num] = reading;
 } else {
  result = data->adc_values[ch_num];
 }

exit:
 mutex_unlock(&data->update_lock);

 return result;
}
