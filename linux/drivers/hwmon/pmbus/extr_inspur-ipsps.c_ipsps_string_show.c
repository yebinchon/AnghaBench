
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int parent; } ;
typedef int ssize_t ;


 int I2C_SMBUS_BLOCK_MAX ;
 int PAGE_SIZE ;
 int i2c_smbus_read_block_data (struct i2c_client*,int ,char*) ;
 int * ipsps_regs ;
 char* memscan (char*,char,int) ;
 int snprintf (char*,int ,char*,char*) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ipsps_string_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 u8 reg;
 int rc;
 char *p;
 char data[I2C_SMBUS_BLOCK_MAX + 1];
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 reg = ipsps_regs[attr->index];
 rc = i2c_smbus_read_block_data(client, reg, data);
 if (rc < 0)
  return rc;


 p = memscan(data, '#', rc);
 *p = '\0';

 return snprintf(buf, PAGE_SIZE, "%s\n", data);
}
