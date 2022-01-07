
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;


 int device_remove_file (struct device*,struct device_attribute const*) ;

__attribute__((used)) static int device_remove_file_wrapper(struct device *dev,
          const struct device_attribute *attr)
{
 device_remove_file(dev, attr);
 return 0;
}
