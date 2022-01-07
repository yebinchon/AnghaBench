
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int low_power; } ;
typedef int ssize_t ;


 struct adm1021_data* adm1021_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t low_power_show(struct device *dev,
         struct device_attribute *devattr, char *buf)
{
 struct adm1021_data *data = adm1021_update_device(dev);
 return sprintf(buf, "%d\n", data->low_power);
}
