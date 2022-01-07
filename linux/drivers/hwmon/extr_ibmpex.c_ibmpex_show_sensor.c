
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {size_t index; size_t nr; } ;
struct ibmpex_bmc_data {TYPE_1__* sensors; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int multiplier; int* values; } ;


 struct ibmpex_bmc_data* dev_get_drvdata (struct device*) ;
 int ibmpex_update_device (struct ibmpex_bmc_data*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t ibmpex_show_sensor(struct device *dev,
      struct device_attribute *devattr,
      char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct ibmpex_bmc_data *data = dev_get_drvdata(dev);
 int mult = data->sensors[attr->index].multiplier;
 ibmpex_update_device(data);

 return sprintf(buf, "%d\n",
         data->sensors[attr->index].values[attr->nr] * mult);
}
