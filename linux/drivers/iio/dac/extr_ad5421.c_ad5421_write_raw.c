
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int AD5421_REG_DAC_DATA ;
 int AD5421_REG_GAIN ;
 int AD5421_REG_OFFSET ;
 int EINVAL ;



 int ad5421_write (struct iio_dev*,int ,int) ;

__attribute__((used)) static int ad5421_write_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int val, int val2, long mask)
{
 const unsigned int max_val = 1 << 16;

 switch (mask) {
 case 128:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5421_write(indio_dev, AD5421_REG_DAC_DATA, val);
 case 130:
  val += 32768;
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5421_write(indio_dev, AD5421_REG_OFFSET, val);
 case 129:
  if (val >= max_val || val < 0)
   return -EINVAL;

  return ad5421_write(indio_dev, AD5421_REG_GAIN, val);
 default:
  break;
 }

 return -EINVAL;
}
