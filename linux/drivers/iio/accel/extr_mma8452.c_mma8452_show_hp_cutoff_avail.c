
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (int ) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int mma8452_get_odr_index (struct mma8452_data*) ;
 int mma8452_get_power_mode (struct mma8452_data*) ;
 int ** mma8452_hp_filter_cutoff ;
 int mma8452_show_int_plus_micros (char*,int ,int ) ;

__attribute__((used)) static ssize_t mma8452_show_hp_cutoff_avail(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct mma8452_data *data = iio_priv(indio_dev);
 int i, j;

 i = mma8452_get_odr_index(data);
 j = mma8452_get_power_mode(data);
 if (j < 0)
  return j;

 return mma8452_show_int_plus_micros(buf, mma8452_hp_filter_cutoff[j][i],
  ARRAY_SIZE(mma8452_hp_filter_cutoff[0][0]));
}
