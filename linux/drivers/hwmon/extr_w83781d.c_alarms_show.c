
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct w83781d_data* w83781d_update_device (struct device*) ;

__attribute__((used)) static ssize_t
alarms_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83781d_data *data = w83781d_update_device(dev);
 return sprintf(buf, "%u\n", data->alarms);
}
