
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* read_sensor ) (struct abx500_temp*,int ,int*) ;} ;
struct abx500_temp {TYPE_1__ ops; int * gpadc_addr; } ;
typedef int ssize_t ;


 struct abx500_temp* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int stub1 (struct abx500_temp*,int ,int*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t input_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 int ret, temp;
 struct abx500_temp *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 u8 gpadc_addr = data->gpadc_addr[attr->index];

 ret = data->ops.read_sensor(data, gpadc_addr, &temp);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", temp);
}
