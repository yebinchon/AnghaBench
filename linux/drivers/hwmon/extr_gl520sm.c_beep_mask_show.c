
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl520_data {int beep_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct gl520_data* gl520_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t beep_mask_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct gl520_data *data = gl520_update_device(dev);
 return sprintf(buf, "%d\n", data->beep_mask);
}
