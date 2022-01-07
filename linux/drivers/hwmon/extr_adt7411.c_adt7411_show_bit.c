
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;
typedef int ssize_t ;


 struct adt7411_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t adt7411_show_bit(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(attr);
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret = i2c_smbus_read_byte_data(client, attr2->index);

 return ret < 0 ? ret : sprintf(buf, "%u\n", !!(ret & attr2->nr));
}
