
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int* pwm; int * fan_preload; int * fan_div; int * fan; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ,int ) ;
 struct smsc47m1_data* smsc47m1_update_device (struct device*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = smsc47m1_update_device(dev, 0);
 int nr = attr->index;






 int rpm = (data->pwm[nr] & 0x7F) == 0x00 ? 0 :
    FAN_FROM_REG(data->fan[nr],
          DIV_FROM_REG(data->fan_div[nr]),
          data->fan_preload[nr]);
 return sprintf(buf, "%d\n", rpm);
}
