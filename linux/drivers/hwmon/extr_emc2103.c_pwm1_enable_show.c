
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emc2103_data {scalar_t__ fan_rpm_control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct emc2103_data* emc2103_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
pwm1_enable_show(struct device *dev, struct device_attribute *da, char *buf)
{
 struct emc2103_data *data = emc2103_update_device(dev);
 return sprintf(buf, "%d\n", data->fan_rpm_control ? 3 : 0);
}
