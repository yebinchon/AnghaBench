
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev_attr {int c; } ;
struct iio_dev {TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read_event_config ) (struct iio_dev*,int ,int ,int ) ;} ;


 struct iio_dev* dev_to_iio_dev (struct device*) ;
 int iio_ev_attr_dir (struct iio_dev_attr*) ;
 int iio_ev_attr_type (struct iio_dev_attr*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct iio_dev*,int ,int ,int ) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t iio_ev_state_show(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 int val;

 val = indio_dev->info->read_event_config(indio_dev,
  this_attr->c, iio_ev_attr_type(this_attr),
  iio_ev_attr_dir(this_attr));
 if (val < 0)
  return val;
 else
  return sprintf(buf, "%d\n", val);
}
