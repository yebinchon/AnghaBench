
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stk8ba50_data {int range; int sample_rate_idx; TYPE_3__* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int scale_val; int samp_freq; int reg_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;


 int STK8BA50_REG_BWSEL ;
 int STK8BA50_REG_RANGE ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_3__*,int ,int ) ;
 struct stk8ba50_data* iio_priv (struct iio_dev*) ;
 TYPE_1__* stk8ba50_samp_freq_table ;
 TYPE_1__* stk8ba50_scale_table ;

__attribute__((used)) static int stk8ba50_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int val, int val2, long mask)
{
 int ret;
 int i;
 int index = -1;
 struct stk8ba50_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  if (val != 0)
   return -EINVAL;

  for (i = 0; i < ARRAY_SIZE(stk8ba50_scale_table); i++)
   if (val2 == stk8ba50_scale_table[i].scale_val) {
    index = i;
    break;
   }
  if (index < 0)
   return -EINVAL;

  ret = i2c_smbus_write_byte_data(data->client,
    STK8BA50_REG_RANGE,
    stk8ba50_scale_table[index].reg_val);
  if (ret < 0)
   dev_err(&data->client->dev,
     "failed to set measurement range\n");
  else
   data->range = index;

  return ret;
 case 129:
  for (i = 0; i < ARRAY_SIZE(stk8ba50_samp_freq_table); i++)
   if (val == stk8ba50_samp_freq_table[i].samp_freq) {
    index = i;
    break;
   }
  if (index < 0)
   return -EINVAL;

  ret = i2c_smbus_write_byte_data(data->client,
    STK8BA50_REG_BWSEL,
    stk8ba50_samp_freq_table[index].reg_val);
  if (ret < 0)
   dev_err(&data->client->dev,
     "failed to set sampling rate\n");
  else
   data->sample_rate_idx = index;

  return ret;
 }

 return -EINVAL;
}
