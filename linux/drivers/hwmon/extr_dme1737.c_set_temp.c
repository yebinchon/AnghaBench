
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int update_lock; void** temp_offset; void** temp_max; void** temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DME1737_REG_TEMP_MAX (int) ;
 int DME1737_REG_TEMP_MIN (int) ;
 int DME1737_REG_TEMP_OFFSET (int) ;



 void* TEMP_TO_REG (long) ;
 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int dme1737_write (struct dme1737_data*,int ,void*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct dme1737_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2
  *sensor_attr_2 = to_sensor_dev_attr_2(attr);
 int ix = sensor_attr_2->index;
 int fn = sensor_attr_2->nr;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 switch (fn) {
 case 129:
  data->temp_min[ix] = TEMP_TO_REG(val);
  dme1737_write(data, DME1737_REG_TEMP_MIN(ix),
         data->temp_min[ix]);
  break;
 case 130:
  data->temp_max[ix] = TEMP_TO_REG(val);
  dme1737_write(data, DME1737_REG_TEMP_MAX(ix),
         data->temp_max[ix]);
  break;
 case 128:
  data->temp_offset[ix] = TEMP_TO_REG(val);
  dme1737_write(data, DME1737_REG_TEMP_OFFSET(ix),
         data->temp_offset[ix]);
  break;
 default:
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
