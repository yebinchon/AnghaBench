
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sps30_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int SPS30_START_FAN_CLEANING ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 scalar_t__ kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sps30_do_cmd (struct sps30_state*,int ,int *,int ) ;

__attribute__((used)) static ssize_t start_cleaning_store(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct sps30_state *state = iio_priv(indio_dev);
 int val, ret;

 if (kstrtoint(buf, 0, &val) || val != 1)
  return -EINVAL;

 mutex_lock(&state->lock);
 ret = sps30_do_cmd(state, SPS30_START_FAN_CLEANING, ((void*)0), 0);
 mutex_unlock(&state->lock);
 if (ret)
  return ret;

 return len;
}
