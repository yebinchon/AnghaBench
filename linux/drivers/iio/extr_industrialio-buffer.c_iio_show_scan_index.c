
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* c; } ;
struct TYPE_3__ {int scan_index; } ;


 int sprintf (char*,char*,int) ;
 TYPE_2__* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t iio_show_scan_index(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 return sprintf(buf, "%u\n", to_iio_dev_attr(attr)->c->scan_index);
}
