
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int * fan_div; int * fan_preload; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int MIN_FROM_REG (int ,int ) ;
 struct smsc47m1_data* smsc47m1_update_device (struct device*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_show(struct device *dev,
       struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = smsc47m1_update_device(dev, 0);
 int nr = attr->index;
 int rpm = MIN_FROM_REG(data->fan_preload[nr],
          DIV_FROM_REG(data->fan_div[nr]));
 return sprintf(buf, "%d\n", rpm);
}
