
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fschmd_data {int update_lock; int global_control; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FSCHMD_CONTROL_ALERT_LED ;
 int FSCHMD_REG_CONTROL ;
 struct fschmd_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t alert_led_store(struct device *dev,
 struct device_attribute *devattr, const char *buf, size_t count)
{
 u8 reg;
 struct fschmd_data *data = dev_get_drvdata(dev);
 unsigned long v;
 int err;

 err = kstrtoul(buf, 10, &v);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 reg = i2c_smbus_read_byte_data(to_i2c_client(dev), FSCHMD_REG_CONTROL);

 if (v)
  reg |= FSCHMD_CONTROL_ALERT_LED;
 else
  reg &= ~FSCHMD_CONTROL_ALERT_LED;

 i2c_smbus_write_byte_data(to_i2c_client(dev), FSCHMD_REG_CONTROL, reg);

 data->global_control = reg;

 mutex_unlock(&data->update_lock);

 return count;
}
