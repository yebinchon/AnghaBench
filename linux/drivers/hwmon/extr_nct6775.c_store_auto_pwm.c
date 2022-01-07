
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct nct6775_data {int auto_pwm_num; int kind; unsigned long** auto_pwm; int CRITICAL_PWM_ENABLE_MASK; int update_lock; int * REG_CRITICAL_PWM_ENABLE; int * REG_CRITICAL_PWM; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int NCT6775_AUTO_PWM (struct nct6775_data*,int,int) ;
 int * NCT6775_REG_CRITICAL_ENAB ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;



 int nct6775_read_value (struct nct6775_data*,int ) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_auto_pwm(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int point = sattr->index;
 unsigned long val;
 int err;
 u8 reg;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;
 if (val > 255)
  return -EINVAL;

 if (point == data->auto_pwm_num) {
  if (data->kind != 137 && !val)
   return -EINVAL;
  if (data->kind != 135 && val)
   val = 0xff;
 }

 mutex_lock(&data->update_lock);
 data->auto_pwm[nr][point] = val;
 if (point < data->auto_pwm_num) {
  nct6775_write_value(data,
        NCT6775_AUTO_PWM(data, nr, point),
        data->auto_pwm[nr][point]);
 } else {
  switch (data->kind) {
  case 137:

   reg = nct6775_read_value(data,
       NCT6775_REG_CRITICAL_ENAB[nr]);
   if (val)
    reg |= 0x02;
   else
    reg &= ~0x02;
   nct6775_write_value(data, NCT6775_REG_CRITICAL_ENAB[nr],
         reg);
   break;
  case 136:
   break;
  case 139:
  case 138:
  case 135:
  case 134:
  case 133:
  case 132:
  case 131:
  case 130:
  case 129:
  case 128:
   nct6775_write_value(data, data->REG_CRITICAL_PWM[nr],
         val);
   reg = nct6775_read_value(data,
     data->REG_CRITICAL_PWM_ENABLE[nr]);
   if (val == 255)
    reg &= ~data->CRITICAL_PWM_ENABLE_MASK;
   else
    reg |= data->CRITICAL_PWM_ENABLE_MASK;
   nct6775_write_value(data,
         data->REG_CRITICAL_PWM_ENABLE[nr],
         reg);
   break;
  }
 }
 mutex_unlock(&data->update_lock);
 return count;
}
