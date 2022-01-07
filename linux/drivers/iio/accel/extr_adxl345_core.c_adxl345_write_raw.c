
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct adxl345_data {int regmap; } ;
typedef int s64 ;


 int ADXL345_BASE_RATE_NANO_HZ ;
 int ADXL345_BW_RATE ;
 int ADXL345_REG_BW_RATE ;
 int ADXL345_REG_OFS_AXIS (int ) ;
 int EINVAL ;


 int NHZ_PER_HZ ;
 int clamp_val (int ,int ,int ) ;
 int div_s64 (int,int ) ;
 struct adxl345_data* iio_priv (struct iio_dev*) ;
 int ilog2 (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int adxl345_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct adxl345_data *data = iio_priv(indio_dev);
 s64 n;

 switch (mask) {
 case 129:




  return regmap_write(data->regmap,
        ADXL345_REG_OFS_AXIS(chan->address),
        val / 4);
 case 128:
  n = div_s64(val * NHZ_PER_HZ + val2, ADXL345_BASE_RATE_NANO_HZ);

  return regmap_update_bits(data->regmap, ADXL345_REG_BW_RATE,
       ADXL345_BW_RATE,
       clamp_val(ilog2(n), 0,
          ADXL345_BW_RATE));
 }

 return -EINVAL;
}
