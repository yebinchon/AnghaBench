
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct it87_data {int ** in; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int in_from_reg (struct it87_data*,int,int ) ;
 struct it87_data* it87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_in(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 struct it87_data *data = it87_update_device(dev);
 int index = sattr->index;
 int nr = sattr->nr;

 return sprintf(buf, "%d\n", in_from_reg(data, nr, data->in[nr][index]));
}
