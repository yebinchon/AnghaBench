
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int mlock; int * buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int __iio_update_buffers (struct iio_dev*,int *,int *) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_buffer_is_active (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t iio_buffer_store_enable(struct device *dev,
           struct device_attribute *attr,
           const char *buf,
           size_t len)
{
 int ret;
 bool requested_state;
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 bool inlist;

 ret = strtobool(buf, &requested_state);
 if (ret < 0)
  return ret;

 mutex_lock(&indio_dev->mlock);


 inlist = iio_buffer_is_active(indio_dev->buffer);

 if (inlist == requested_state)
  goto done;

 if (requested_state)
  ret = __iio_update_buffers(indio_dev,
      indio_dev->buffer, ((void*)0));
 else
  ret = __iio_update_buffers(indio_dev,
      ((void*)0), indio_dev->buffer);

done:
 mutex_unlock(&indio_dev->mlock);
 return (ret < 0) ? ret : len;
}
