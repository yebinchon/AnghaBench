
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u8 ;
struct smsc47m1_data {int* fan_div; int* fan_preload; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int BUG () ;
 long DIV_FROM_REG (int) ;
 int EINVAL ;
 int SMSC47M1_REG_FANDIV ;
 int * SMSC47M1_REG_FAN_PRELOAD ;
 int SMSC47M2_REG_FANDIV3 ;
 int clamp_val (long,int ,int) ;
 struct smsc47m1_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smsc47m1_read_value (struct smsc47m1_data*,int ) ;
 int smsc47m1_write_value (struct smsc47m1_data*,int ,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = dev_get_drvdata(dev);
 int nr = attr->index;
 long new_div;
 int err;
 long tmp;
 u8 old_div = DIV_FROM_REG(data->fan_div[nr]);

 err = kstrtol(buf, 10, &new_div);
 if (err)
  return err;

 if (new_div == old_div)
  return count;

 mutex_lock(&data->update_lock);
 switch (new_div) {
 case 1:
  data->fan_div[nr] = 0;
  break;
 case 2:
  data->fan_div[nr] = 1;
  break;
 case 4:
  data->fan_div[nr] = 2;
  break;
 case 8:
  data->fan_div[nr] = 3;
  break;
 default:
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }

 switch (nr) {
 case 0:
 case 1:
  tmp = smsc47m1_read_value(data, SMSC47M1_REG_FANDIV)
        & ~(0x03 << (4 + 2 * nr));
  tmp |= data->fan_div[nr] << (4 + 2 * nr);
  smsc47m1_write_value(data, SMSC47M1_REG_FANDIV, tmp);
  break;
 case 2:
  tmp = smsc47m1_read_value(data, SMSC47M2_REG_FANDIV3) & 0xCF;
  tmp |= data->fan_div[2] << 4;
  smsc47m1_write_value(data, SMSC47M2_REG_FANDIV3, tmp);
  break;
 default:
  BUG();
 }


 tmp = 192 - (old_div * (192 - data->fan_preload[nr])
       + new_div / 2) / new_div;
 data->fan_preload[nr] = clamp_val(tmp, 0, 191);
 smsc47m1_write_value(data, SMSC47M1_REG_FAN_PRELOAD[nr],
        data->fan_preload[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
