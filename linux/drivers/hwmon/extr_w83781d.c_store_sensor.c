
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w83781d_data {unsigned long* sens; int update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int* BIT_SCFG1 ;
 int* BIT_SCFG2 ;

 int W83781D_REG_SCFG1 ;
 int W83781D_REG_SCFG2 ;
 int dev_err (struct device*,char*,long) ;
 struct w83781d_data* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*,int const) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 int w83781d_read_value (struct w83781d_data*,int ) ;
 int w83781d_write_value (struct w83781d_data*,int ,int) ;

__attribute__((used)) static ssize_t
store_sensor(struct device *dev, struct device_attribute *da,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct w83781d_data *data = dev_get_drvdata(dev);
 int nr = attr->index;
 unsigned long val;
 u32 tmp;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);

 switch (val) {
 case 1:
  tmp = w83781d_read_value(data, W83781D_REG_SCFG1);
  w83781d_write_value(data, W83781D_REG_SCFG1,
        tmp | BIT_SCFG1[nr]);
  tmp = w83781d_read_value(data, W83781D_REG_SCFG2);
  w83781d_write_value(data, W83781D_REG_SCFG2,
        tmp | BIT_SCFG2[nr]);
  data->sens[nr] = val;
  break;
 case 2:
  tmp = w83781d_read_value(data, W83781D_REG_SCFG1);
  w83781d_write_value(data, W83781D_REG_SCFG1,
        tmp | BIT_SCFG1[nr]);
  tmp = w83781d_read_value(data, W83781D_REG_SCFG2);
  w83781d_write_value(data, W83781D_REG_SCFG2,
        tmp & ~BIT_SCFG2[nr]);
  data->sens[nr] = val;
  break;
 case 128:
  dev_warn(dev,
    "Sensor type %d is deprecated, please use 4 instead\n",
    128);

 case 4:
  tmp = w83781d_read_value(data, W83781D_REG_SCFG1);
  w83781d_write_value(data, W83781D_REG_SCFG1,
        tmp & ~BIT_SCFG1[nr]);
  data->sens[nr] = val;
  break;
 default:
  dev_err(dev, "Invalid sensor type %ld; must be 1, 2, or 4\n",
         (long) val);
  break;
 }

 mutex_unlock(&data->update_lock);
 return count;
}
