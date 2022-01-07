
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_buffer_is_active (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t iio_buffer_show_enable(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 return sprintf(buf, "%d\n", iio_buffer_is_active(indio_dev->buffer));
}
