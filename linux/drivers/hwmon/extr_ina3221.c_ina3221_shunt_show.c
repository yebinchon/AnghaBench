
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {unsigned int index; } ;
struct ina3221_input {int shunt_resistor; } ;
struct ina3221_data {struct ina3221_input* inputs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ina3221_data* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ina3221_shunt_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *sd_attr = to_sensor_dev_attr(attr);
 struct ina3221_data *ina = dev_get_drvdata(dev);
 unsigned int channel = sd_attr->index;
 struct ina3221_input *input = &ina->inputs[channel];

 return snprintf(buf, PAGE_SIZE, "%d\n", input->shunt_resistor);
}
