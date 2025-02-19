
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {struct iio_buffer* buffer; } ;
struct iio_buffer {int length; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t iio_buffer_read_length(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_buffer *buffer = indio_dev->buffer;

 return sprintf(buf, "%d\n", buffer->length);
}
