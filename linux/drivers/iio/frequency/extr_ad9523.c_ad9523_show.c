
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev_attr {scalar_t__ address; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad9523_state {int lock; } ;
typedef int ssize_t ;


 int AD9523_READBACK_0 ;
 int ad9523_read (struct iio_dev*,int ) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct ad9523_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ad9523_show(struct device *dev,
   struct device_attribute *attr,
   char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 struct ad9523_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->lock);
 ret = ad9523_read(indio_dev, AD9523_READBACK_0);
 if (ret >= 0) {
  ret = sprintf(buf, "%d\n", !!(ret & (1 <<
   (u32)this_attr->address)));
 }
 mutex_unlock(&st->lock);

 return ret;
}
