
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83627ehf_sio_data {scalar_t__ kind; } ;
struct w83627ehf_data {long* tolerance; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int * NCT6775_REG_FAN_MODE ;
 int * W83627EHF_REG_TOLERANCE ;
 long clamp_val (int ,int ,int) ;
 struct w83627ehf_data* dev_get_drvdata (struct device*) ;
 struct w83627ehf_sio_data* dev_get_platdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ nct6775 ;
 scalar_t__ nct6776 ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83627ehf_read_value (struct w83627ehf_data*,int ) ;
 int w83627ehf_write_value (struct w83627ehf_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_tolerance(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct w83627ehf_data *data = dev_get_drvdata(dev);
 struct w83627ehf_sio_data *sio_data = dev_get_platdata(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 u16 reg;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;


 val = clamp_val(DIV_ROUND_CLOSEST(val, 1000), 0, 15);

 mutex_lock(&data->update_lock);
 if (sio_data->kind == nct6775 || sio_data->kind == nct6776) {

  if (sio_data->kind == nct6776 && val > 7)
   val = 7;
  reg = w83627ehf_read_value(data, NCT6775_REG_FAN_MODE[nr]);
  reg = (reg & 0xf0) | val;
  w83627ehf_write_value(data, NCT6775_REG_FAN_MODE[nr], reg);
 } else {
  reg = w83627ehf_read_value(data, W83627EHF_REG_TOLERANCE[nr]);
  if (nr == 1)
   reg = (reg & 0x0f) | (val << 4);
  else
   reg = (reg & 0xf0) | val;
  w83627ehf_write_value(data, W83627EHF_REG_TOLERANCE[nr], reg);
 }
 data->tolerance[nr] = val;
 mutex_unlock(&data->update_lock);
 return count;
}
