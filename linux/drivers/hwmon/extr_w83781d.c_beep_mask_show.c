
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int type; int beep_mask; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ BEEP_MASK_FROM_REG (int ,int ) ;
 int sprintf (char*,char*,long) ;
 struct w83781d_data* w83781d_update_device (struct device*) ;

__attribute__((used)) static ssize_t beep_mask_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct w83781d_data *data = w83781d_update_device(dev);
 return sprintf(buf, "%ld\n",
         (long)BEEP_MASK_FROM_REG(data->beep_mask, data->type));
}
