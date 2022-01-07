
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int num_channels; int * channels; } ;


 int iio_device_add_event_sysfs (struct iio_dev*,int *) ;

__attribute__((used)) static inline int __iio_add_event_config_attrs(struct iio_dev *indio_dev)
{
 int j, ret, attrcount = 0;


 for (j = 0; j < indio_dev->num_channels; j++) {
  ret = iio_device_add_event_sysfs(indio_dev,
       &indio_dev->channels[j]);
  if (ret < 0)
   return ret;
  attrcount += ret;
 }
 return attrcount;
}
