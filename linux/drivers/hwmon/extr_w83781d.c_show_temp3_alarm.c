
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {scalar_t__ type; int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 scalar_t__ w83781d ;
 struct w83781d_data* w83781d_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp3_alarm(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct w83781d_data *data = w83781d_update_device(dev);
 int bitnr = (data->type == w83781d) ? 5 : 13;
 return sprintf(buf, "%u\n", (data->alarms >> bitnr) & 1);
}
