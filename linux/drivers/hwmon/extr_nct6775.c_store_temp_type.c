
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* temp_type; int DIODE_MASK; int update_lock; int REG_DIODE; int REG_VBAT; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_read_value (struct nct6775_data*,int ) ;
 struct nct6775_data* nct6775_update_device (struct device*) ;
 int nct6775_write_value (struct nct6775_data*,int ,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_temp_type(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct nct6775_data *data = nct6775_update_device(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 int err;
 u8 vbat, diode, vbit, dbit;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 if (val != 1 && val != 3 && val != 4)
  return -EINVAL;

 mutex_lock(&data->update_lock);

 data->temp_type[nr] = val;
 vbit = 0x02 << nr;
 dbit = data->DIODE_MASK << nr;
 vbat = nct6775_read_value(data, data->REG_VBAT) & ~vbit;
 diode = nct6775_read_value(data, data->REG_DIODE) & ~dbit;
 switch (val) {
 case 1:
  vbat |= vbit;
  diode |= dbit;
  break;
 case 3:
  vbat |= dbit;
  break;
 case 4:
  break;
 }
 nct6775_write_value(data, data->REG_VBAT, vbat);
 nct6775_write_value(data, data->REG_DIODE, diode);

 mutex_unlock(&data->update_lock);
 return count;
}
