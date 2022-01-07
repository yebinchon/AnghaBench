
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt1211_data {int update_lock; int ** pwm_auto_pwm; } ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int VT1211_REG_PWM_AUTO_PWM (int,int) ;
 int clamp_val (unsigned long,int ,int) ;
 struct vt1211_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int vt1211_write8 (struct vt1211_data*,int ,int ) ;

__attribute__((used)) static ssize_t set_pwm_auto_point_pwm(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct vt1211_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sensor_attr_2 =
      to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int ap = sensor_attr_2->nr;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->pwm_auto_pwm[ix][ap] = clamp_val(val, 0, 255);
 vt1211_write8(data, VT1211_REG_PWM_AUTO_PWM(ix, ap),
        data->pwm_auto_pwm[ix][ap]);
 mutex_unlock(&data->update_lock);

 return count;
}
