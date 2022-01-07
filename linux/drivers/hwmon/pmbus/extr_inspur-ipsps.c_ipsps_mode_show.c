
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



 char* MODE_ACTIVE_STRING ;

 char* MODE_REDUNDANCY_STRING ;

 char* MODE_STANDBY_STRING ;
 int PAGE_SIZE ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int * ipsps_regs ;
 int snprintf (char*,int ,char*,...) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ipsps_mode_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 u8 reg;
 int rc;
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 reg = ipsps_regs[attr->index];
 rc = i2c_smbus_read_byte_data(client, reg);
 if (rc < 0)
  return rc;

 switch (rc) {
 case 130:
  return snprintf(buf, PAGE_SIZE, "[%s] %s %s\n",
    MODE_ACTIVE_STRING,
    MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
 case 128:
  return snprintf(buf, PAGE_SIZE, "%s [%s] %s\n",
    MODE_ACTIVE_STRING,
    MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
 case 129:
  return snprintf(buf, PAGE_SIZE, "%s %s [%s]\n",
    MODE_ACTIVE_STRING,
    MODE_STANDBY_STRING, MODE_REDUNDANCY_STRING);
 default:
  return snprintf(buf, PAGE_SIZE, "unspecified\n");
 }
}
