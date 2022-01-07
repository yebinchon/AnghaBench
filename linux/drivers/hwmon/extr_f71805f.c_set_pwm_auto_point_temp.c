
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sensor_device_attribute_2 {int nr; int index; } ;
struct f71805f_data {int update_lock; TYPE_1__* auto_points; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int * temp; } ;


 int F71805F_REG_PWM_AUTO_POINT_TEMP (int,int) ;
 struct f71805f_data* dev_get_drvdata (struct device*) ;
 int f71805f_write8 (struct f71805f_data*,int ,int ) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int temp_to_reg (unsigned long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_auto_point_temp(struct device *dev,
           struct device_attribute *devattr,
           const char *buf, size_t count)
{
 struct f71805f_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 int pwmnr = attr->nr;
 int apnr = attr->index;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->auto_points[pwmnr].temp[apnr] = temp_to_reg(val);
 f71805f_write8(data, F71805F_REG_PWM_AUTO_POINT_TEMP(pwmnr, apnr),
         data->auto_points[pwmnr].temp[apnr]);
 mutex_unlock(&data->update_lock);

 return count;
}
