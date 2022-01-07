
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct hmc5843_data {TYPE_1__* variant; int regmap; } ;
struct TYPE_2__ {int* regval_to_nanoscale; int** regval_to_samp_freq; } ;


 int EINVAL ;
 int HMC5843_CONFIG_REG_A ;
 int HMC5843_CONFIG_REG_B ;
 unsigned int HMC5843_RANGE_GAIN_OFFSET ;
 unsigned int HMC5843_RATE_OFFSET ;



 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int hmc5843_read_measurement (struct hmc5843_data*,int ,int*) ;
 struct hmc5843_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int hmc5843_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct hmc5843_data *data = iio_priv(indio_dev);
 unsigned int rval;
 int ret;

 switch (mask) {
 case 130:
  return hmc5843_read_measurement(data, chan->scan_index, val);
 case 128:
  ret = regmap_read(data->regmap, HMC5843_CONFIG_REG_B, &rval);
  if (ret < 0)
   return ret;
  rval >>= HMC5843_RANGE_GAIN_OFFSET;
  *val = 0;
  *val2 = data->variant->regval_to_nanoscale[rval];
  return IIO_VAL_INT_PLUS_NANO;
 case 129:
  ret = regmap_read(data->regmap, HMC5843_CONFIG_REG_A, &rval);
  if (ret < 0)
   return ret;
  rval >>= HMC5843_RATE_OFFSET;
  *val = data->variant->regval_to_samp_freq[rval][0];
  *val2 = data->variant->regval_to_samp_freq[rval][1];
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
