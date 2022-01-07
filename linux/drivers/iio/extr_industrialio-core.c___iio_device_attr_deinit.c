
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;


 int kfree (int ) ;

__attribute__((used)) static void __iio_device_attr_deinit(struct device_attribute *dev_attr)
{
 kfree(dev_attr->attr.name);
}
