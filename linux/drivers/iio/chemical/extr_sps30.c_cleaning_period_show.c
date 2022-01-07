
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sps30_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SPS30_READ_AUTO_CLEANING_PERIOD ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int get_unaligned_be32 (int *) ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int) ;

__attribute__((used)) static ssize_t cleaning_period_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct sps30_state *state = iio_priv(indio_dev);
 u8 tmp[4];
 int ret;

 mutex_lock(&state->lock);
 ret = sps30_do_cmd(state, SPS30_READ_AUTO_CLEANING_PERIOD, tmp, 4);
 mutex_unlock(&state->lock);
 if (ret)
  return ret;

 return sprintf(buf, "%d\n", get_unaligned_be32(tmp));
}
