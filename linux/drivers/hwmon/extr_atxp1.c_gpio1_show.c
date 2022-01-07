
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int gpio1; } ;
struct atxp1_data {TYPE_1__ reg; } ;
typedef int ssize_t ;


 int ATXP1_GPIO1MASK ;
 struct atxp1_data* atxp1_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t gpio1_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int size;
 struct atxp1_data *data;

 data = atxp1_update_device(dev);

 size = sprintf(buf, "0x%02x\n", data->reg.gpio1 & ATXP1_GPIO1MASK);

 return size;
}
