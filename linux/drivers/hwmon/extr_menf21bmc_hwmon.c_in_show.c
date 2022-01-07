
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct menf21bmc_hwmon {int* in_val; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct menf21bmc_hwmon*) ;
 int PTR_ERR (struct menf21bmc_hwmon*) ;
 struct menf21bmc_hwmon* menf21bmc_hwmon_update (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
in_show(struct device *dev, struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct menf21bmc_hwmon *drv_data = menf21bmc_hwmon_update(dev);

 if (IS_ERR(drv_data))
  return PTR_ERR(drv_data);

 return sprintf(buf, "%d\n", drv_data->in_val[attr->index]);
}
