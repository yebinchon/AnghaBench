
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {int nr; int index; } ;
struct f71805f_data {TYPE_1__* auto_points; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * temp; } ;


 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;
 int temp_from_reg (int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_auto_point_temp(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 int pwmnr = attr->nr;
 int apnr = attr->index;

 return sprintf(buf, "%ld\n",
         temp_from_reg(data->auto_points[pwmnr].temp[apnr]));
}
