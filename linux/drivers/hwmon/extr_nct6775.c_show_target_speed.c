
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct nct6775_data {int * fan_div; int * target_speed; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int fan_from_reg16 (int ,int ) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_target_speed(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct nct6775_data *data = nct6775_update_device(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;

 return sprintf(buf, "%d\n",
         fan_from_reg16(data->target_speed[nr],
          data->fan_div[nr]));
}
