
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* string; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_1__* to_iio_const_attr (struct device_attribute*) ;

ssize_t iio_read_const_attr(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 return sprintf(buf, "%s\n", to_iio_const_attr(attr)->string);
}
