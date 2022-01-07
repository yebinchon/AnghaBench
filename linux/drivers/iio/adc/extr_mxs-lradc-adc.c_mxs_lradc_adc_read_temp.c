
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int IIO_VAL_INT ;
 int mxs_lradc_adc_read_single (struct iio_dev*,int,int*) ;

__attribute__((used)) static int mxs_lradc_adc_read_temp(struct iio_dev *iio_dev, int *val)
{
 int ret, min, max;

 ret = mxs_lradc_adc_read_single(iio_dev, 8, &min);
 if (ret != IIO_VAL_INT)
  return ret;

 ret = mxs_lradc_adc_read_single(iio_dev, 9, &max);
 if (ret != IIO_VAL_INT)
  return ret;

 *val = max - min;

 return IIO_VAL_INT;
}
