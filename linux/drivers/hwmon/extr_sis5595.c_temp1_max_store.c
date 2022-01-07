
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis5595_data {int update_lock; int temp_over; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SIS5595_REG_TEMP_OVER ;
 int TEMP_TO_REG (long) ;
 struct sis5595_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sis5595_write_value (struct sis5595_data*,int ,int ) ;

__attribute__((used)) static ssize_t temp1_max_store(struct device *dev,
          struct device_attribute *attr, const char *buf,
          size_t count)
{
 struct sis5595_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_over = TEMP_TO_REG(val);
 sis5595_write_value(data, SIS5595_REG_TEMP_OVER, data->temp_over);
 mutex_unlock(&data->update_lock);
 return count;
}
