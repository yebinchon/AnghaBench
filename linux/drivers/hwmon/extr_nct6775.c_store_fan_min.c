
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {int index; } ;
struct nct6775_data {unsigned long* fan_min; int* fan_div; int update_lock; int * REG_FAN_MIN; int last_updated; int (* fan_from_reg_min ) (int,int) ;int has_fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int dev_dbg (struct device*,char*,int,int ,int ) ;
 struct nct6775_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*,int) ;
 int dev_warn (struct device*,char*,int,unsigned long,int ) ;
 int div_from_reg (int) ;
 int jiffies ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nct6775_write_fan_div_common (struct nct6775_data*,int) ;
 int nct6775_write_value (struct nct6775_data*,int ,unsigned int) ;
 int stub1 (int,int) ;
 int stub2 (int,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
store_fan_min(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct nct6775_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *sattr = to_sensor_dev_attr(attr);
 int nr = sattr->index;
 unsigned long val;
 unsigned int reg;
 u8 new_div;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err < 0)
  return err;

 mutex_lock(&data->update_lock);
 if (!data->has_fan_div) {

  if (!val) {
   val = 0xff1f;
  } else {
   if (val > 1350000U)
    val = 135000U;
   val = 1350000U / val;
   val = (val & 0x1f) | ((val << 3) & 0xff00);
  }
  data->fan_min[nr] = val;
  goto write_min;
 }
 if (!val) {

  data->fan_min[nr] = 255;
  new_div = data->fan_div[nr];
  dev_info(dev, "fan%u low limit and alarm disabled\n", nr + 1);
  goto write_div;
 }
 reg = 1350000U / val;
 if (reg >= 128 * 255) {




  data->fan_min[nr] = 254;
  new_div = 7;
  dev_warn(dev,
    "fan%u low limit %lu below minimum %u, set to minimum\n",
    nr + 1, val, data->fan_from_reg_min(254, 7));
 } else if (!reg) {




  data->fan_min[nr] = 1;
  new_div = 0;
  dev_warn(dev,
    "fan%u low limit %lu above maximum %u, set to maximum\n",
    nr + 1, val, data->fan_from_reg_min(1, 0));
 } else {





  new_div = 0;
  while (reg > 192 && new_div < 7) {
   reg >>= 1;
   new_div++;
  }
  data->fan_min[nr] = reg;
 }

write_div:




 if (new_div != data->fan_div[nr]) {
  dev_dbg(dev, "fan%u clock divider changed from %u to %u\n",
   nr + 1, div_from_reg(data->fan_div[nr]),
   div_from_reg(new_div));
  data->fan_div[nr] = new_div;
  nct6775_write_fan_div_common(data, nr);

  data->last_updated = jiffies;
 }

write_min:
 nct6775_write_value(data, data->REG_FAN_MIN[nr], data->fan_min[nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
