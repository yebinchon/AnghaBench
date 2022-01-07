
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


 int EINVAL ;
 int MODE_ACTIVE ;
 int MODE_ACTIVE_STRING ;
 int MODE_STANDBY ;
 int MODE_STANDBY_STRING ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int * ipsps_regs ;
 scalar_t__ sysfs_streq (int ,char const*) ;
 struct i2c_client* to_i2c_client (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ipsps_mode_store(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 u8 reg;
 int rc;
 struct i2c_client *client = to_i2c_client(dev->parent);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 reg = ipsps_regs[attr->index];
 if (sysfs_streq(MODE_STANDBY_STRING, buf)) {
  rc = i2c_smbus_write_byte_data(client, reg,
            MODE_STANDBY);
  if (rc < 0)
   return rc;
  return count;
 } else if (sysfs_streq(MODE_ACTIVE_STRING, buf)) {
  rc = i2c_smbus_write_byte_data(client, reg,
            MODE_ACTIVE);
  if (rc < 0)
   return rc;
  return count;
 }

 return -EINVAL;
}
