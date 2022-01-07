
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int update_lock; void** in_max; int * in_nominal; void** in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DME1737_REG_IN_MAX (int) ;
 int DME1737_REG_IN_MIN (int) ;
 void* IN_TO_REG (long,int ) ;


 int dev_dbg (struct device*,char*,int) ;
 struct dme1737_data* dev_get_drvdata (struct device*) ;
 int dme1737_write (struct dme1737_data*,int ,void*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in(struct device *dev, struct device_attribute *attr,
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
 case 128:
  data->in_min[ix] = IN_TO_REG(val, data->in_nominal[ix]);
  dme1737_write(data, DME1737_REG_IN_MIN(ix),
         data->in_min[ix]);
  break;
 case 129:
  data->in_max[ix] = IN_TO_REG(val, data->in_nominal[ix]);
  dme1737_write(data, DME1737_REG_IN_MAX(ix),
         data->in_max[ix]);
  break;
 default:
  dev_dbg(dev, "Unknown function %d.\n", fn);
 }
 mutex_unlock(&data->update_lock);

 return count;
}
