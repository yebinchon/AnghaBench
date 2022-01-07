
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temp_data {int cpu_core_id; scalar_t__ is_pkg_data; } ;
struct sensor_device_attribute {size_t index; } ;
struct platform_data {int pkg_id; struct temp_data** core_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct platform_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_label(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct platform_data *pdata = dev_get_drvdata(dev);
 struct temp_data *tdata = pdata->core_data[attr->index];

 if (tdata->is_pkg_data)
  return sprintf(buf, "Package id %u\n", pdata->pkg_id);

 return sprintf(buf, "Core %u\n", tdata->cpu_core_id);
}
