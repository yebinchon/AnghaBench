
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct adxl345_data {int regmap; int type; } ;
typedef int accel ;
typedef int __le16 ;



 unsigned int ADXL345_BASE_RATE_NANO_HZ ;
 unsigned int ADXL345_BW_RATE ;
 int ADXL345_REG_BW_RATE ;
 int ADXL345_REG_DATA_AXIS (int ) ;
 int ADXL345_REG_OFS_AXIS (int ) ;

 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int NHZ_PER_HZ ;
 int adxl345_uscale ;
 int adxl375_uscale ;
 int div_s64_rem (long long,int ,int*) ;
 struct adxl345_data* iio_priv (struct iio_dev*) ;
 unsigned int le16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int adxl345_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct adxl345_data *data = iio_priv(indio_dev);
 __le16 accel;
 long long samp_freq_nhz;
 unsigned int regval;
 int ret;

 switch (mask) {
 case 130:





  ret = regmap_bulk_read(data->regmap,
           ADXL345_REG_DATA_AXIS(chan->address),
           &accel, sizeof(accel));
  if (ret < 0)
   return ret;

  *val = sign_extend32(le16_to_cpu(accel), 12);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  switch (data->type) {
  case 133:
   *val2 = adxl345_uscale;
   break;
  case 132:
   *val2 = adxl375_uscale;
   break;
  }

  return IIO_VAL_INT_PLUS_MICRO;
 case 131:
  ret = regmap_read(data->regmap,
      ADXL345_REG_OFS_AXIS(chan->address), &regval);
  if (ret < 0)
   return ret;




  *val = sign_extend32(regval, 7) * 4;

  return IIO_VAL_INT;
 case 129:
  ret = regmap_read(data->regmap, ADXL345_REG_BW_RATE, &regval);
  if (ret < 0)
   return ret;

  samp_freq_nhz = ADXL345_BASE_RATE_NANO_HZ <<
    (regval & ADXL345_BW_RATE);
  *val = div_s64_rem(samp_freq_nhz, NHZ_PER_HZ, val2);

  return IIO_VAL_INT_PLUS_NANO;
 }

 return -EINVAL;
}
