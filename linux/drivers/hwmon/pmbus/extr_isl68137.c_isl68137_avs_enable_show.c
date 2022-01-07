
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int isl68137_avs_enable_show_page (struct i2c_client*,int ,char*) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t isl68137_avs_enable_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 return isl68137_avs_enable_show_page(client, attr->index, buf);
}
