
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_enum {int (* set ) (struct iio_dev*,struct iio_chan_spec const*,int) ;int num_items; int items; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int __sysfs_match_string (int ,int ,char const*) ;
 int stub1 (struct iio_dev*,struct iio_chan_spec const*,int) ;

ssize_t iio_enum_write(struct iio_dev *indio_dev,
 uintptr_t priv, const struct iio_chan_spec *chan, const char *buf,
 size_t len)
{
 const struct iio_enum *e = (const struct iio_enum *)priv;
 int ret;

 if (!e->set)
  return -EINVAL;

 ret = __sysfs_match_string(e->items, e->num_items, buf);
 if (ret < 0)
  return ret;

 ret = e->set(indio_dev, chan, ret);
 return ret ? ret : len;
}
