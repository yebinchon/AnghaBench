
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


 int EINVAL ;
 int SPS30_AUTO_CLEANING_PERIOD ;
 int SPS30_AUTO_CLEANING_PERIOD_MAX ;
 int SPS30_AUTO_CLEANING_PERIOD_MIN ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int dev_warn (struct device*,char*) ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_unaligned_be32 (int,int *) ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int ) ;
 int sps30_do_cmd_reset (struct sps30_state*) ;

__attribute__((used)) static ssize_t cleaning_period_store(struct device *dev,
           struct device_attribute *attr,
           const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct sps30_state *state = iio_priv(indio_dev);
 int val, ret;
 u8 tmp[4];

 if (kstrtoint(buf, 0, &val))
  return -EINVAL;

 if ((val < SPS30_AUTO_CLEANING_PERIOD_MIN) ||
     (val > SPS30_AUTO_CLEANING_PERIOD_MAX))
  return -EINVAL;

 put_unaligned_be32(val, tmp);

 mutex_lock(&state->lock);
 ret = sps30_do_cmd(state, SPS30_AUTO_CLEANING_PERIOD, tmp, 0);
 if (ret) {
  mutex_unlock(&state->lock);
  return ret;
 }

 msleep(20);





 ret = sps30_do_cmd_reset(state);
 if (ret)
  dev_warn(dev,
    "period changed but reads will return the old value\n");

 mutex_unlock(&state->lock);

 return len;
}
