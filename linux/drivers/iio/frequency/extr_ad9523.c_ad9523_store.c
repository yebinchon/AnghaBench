
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {int address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9523_state {int lock; } ;
typedef int ssize_t ;




 int ENODEV ;
 int ad9523_store_eeprom (struct iio_dev*) ;
 int ad9523_sync (struct iio_dev*) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad9523_store(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct ad9523_state *st = iio_priv(indio_dev);
 bool state;
 int ret;

 ret = strtobool(buf, &state);
 if (ret < 0)
  return ret;

 if (!state)
  return len;

 mutex_lock(&st->lock);
 switch ((u32)this_attr->address) {
 case 128:
  ret = ad9523_sync(indio_dev);
  break;
 case 129:
  ret = ad9523_store_eeprom(indio_dev);
  break;
 default:
  ret = -ENODEV;
 }
 mutex_unlock(&st->lock);

 return ret ? ret : len;
}
