
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev_attr {int address; int c; } ;
struct iio_dev {TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read_avail ) (struct iio_dev*,int ,int const**,int*,int*,int ) ;} ;


 int EINVAL ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_format_avail_list (char*,int const*,int,int) ;
 int iio_format_avail_range (char*,int const*,int) ;
 int stub1 (struct iio_dev*,int ,int const**,int*,int*,int ) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t iio_read_channel_info_avail(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 const int *vals;
 int ret;
 int length;
 int type;

 ret = indio_dev->info->read_avail(indio_dev, this_attr->c,
       &vals, &type, &length,
       this_attr->address);

 if (ret < 0)
  return ret;
 switch (ret) {
 case 129:
  return iio_format_avail_list(buf, vals, type, length);
 case 128:
  return iio_format_avail_range(buf, vals, type);
 default:
  return -EINVAL;
 }
}
