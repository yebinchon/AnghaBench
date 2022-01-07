
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int update_lock; void** zone_abs; void** pwm_freq; void** zone_low; void** zone_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DME1737_REG_PWM_FREQ (int) ;
 int DME1737_REG_ZONE_ABS (int) ;
 int DME1737_REG_ZONE_HYST (int) ;
 int DME1737_REG_ZONE_LOW (int) ;




 int TEMP_FROM_REG (void*,int) ;
 void* TEMP_HYST_TO_REG (int,long,int,void*) ;
 void* TEMP_RANGE_TO_REG (long,void*) ;
 void* TEMP_TO_REG (long) ;
 long clamp_val (long,int,int) ;
 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 void* dme1737_read (struct dme1737_data*,int ) ;
 int dme1737_write (struct dme1737_data*,int ,void*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_zone(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 long val;
 int temp;
 int err;
 u8 reg;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 switch (fn) {
 case 130:

  data->zone_low[ix] = dme1737_read(data,
        DME1737_REG_ZONE_LOW(ix));

  temp = TEMP_FROM_REG(data->zone_low[ix], 8);
  reg = dme1737_read(data, DME1737_REG_ZONE_HYST(ix == 2));
  data->zone_hyst[ix == 2] = TEMP_HYST_TO_REG(temp, val, ix, reg);
  dme1737_write(data, DME1737_REG_ZONE_HYST(ix == 2),
         data->zone_hyst[ix == 2]);
  break;
 case 131:
  data->zone_low[ix] = TEMP_TO_REG(val);
  dme1737_write(data, DME1737_REG_ZONE_LOW(ix),
         data->zone_low[ix]);
  break;
 case 129:

  data->zone_low[ix] = dme1737_read(data,
        DME1737_REG_ZONE_LOW(ix));




  temp = TEMP_FROM_REG(data->zone_low[ix], 8);
  val = clamp_val(val, temp, temp + 80000);
  reg = dme1737_read(data, DME1737_REG_PWM_FREQ(ix));
  data->pwm_freq[ix] = TEMP_RANGE_TO_REG(val - temp, reg);
  dme1737_write(data, DME1737_REG_PWM_FREQ(ix),
         data->pwm_freq[ix]);
  break;
 case 128:
  data->zone_abs[ix] = TEMP_TO_REG(val);
  dme1737_write(data, DME1737_REG_ZONE_ABS(ix),
         data->zone_abs[ix]);
  break;
 default:
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
