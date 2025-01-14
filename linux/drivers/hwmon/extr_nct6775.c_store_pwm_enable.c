
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {scalar_t__ kind; unsigned long* pwm_enable; int** pwm; int update_lock; int * REG_FAN_MODE; int ** REG_PWM; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ check_trip_points (struct nct6775_data*,int) ;
 int dev_err (struct device*,char*) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nct6775 ;
 int nct6775_read_value (struct nct6775_data*,int ) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;
 unsigned long off ;
 int pwm_enable_to_reg (unsigned long) ;
 int pwm_update_registers (struct nct6775_data*,int) ;
 unsigned long sf3 ;
 unsigned long sf4 ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_pwm_enable(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;
 u16 reg;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (val > sf4)
  return -EINVAL;

 if (val == sf3 && data->kind != nct6775)
  return -EINVAL;

 if (val == sf4 && check_trip_points(data, nr)) {
  dev_err(dev, "Inconsistent trip points, not switching to SmartFan IV mode\n");
  dev_err(dev, "Adjust trip points and try again\n");
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);
 data->pwm_enable[nr] = val;
 if (val == off) {



  data->pwm[0][nr] = 255;
  nct6775_write_value(data, data->REG_PWM[0][nr], 255);
 }
 pwm_update_registers(data, nr);
 reg = nct6775_read_value(data, data->REG_FAN_MODE[nr]);
 reg &= 0x0f;
 reg |= pwm_enable_to_reg(val) << 4;
 nct6775_write_value(data, data->REG_FAN_MODE[nr], reg);
 mutex_unlock(&data->update_lock);
 return count;
}
