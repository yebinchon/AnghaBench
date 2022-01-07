
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int isl68137_avs_enable_store_page (struct i2c_client*,int ,char const*,size_t) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t isl68137_avs_enable_store(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 return isl68137_avs_enable_store_page(client, attr->index, buf, count);
}
