
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* trig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t iio_trigger_read_current(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);

 if (indio_dev->trig)
  return sprintf(buf, "%s\n", indio_dev->trig->name);
 return 0;
}
