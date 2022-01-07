
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_1__* buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int address; } ;
struct TYPE_3__ {int scan_mask; } ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int sprintf (char*,char*,int) ;
 int test_bit (int ,int ) ;
 TYPE_2__* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t iio_scan_el_show(struct device *dev,
    struct device_attribute *attr,
    char *buf)
{
 int ret;
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);


 ret = !!test_bit(to_iio_dev_attr(attr)->address,
         indio_dev->buffer->scan_mask);

 return sprintf(buf, "%d\n", ret);
}
