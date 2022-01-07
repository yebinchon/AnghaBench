
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm78_data {int update_lock; int temp_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM78_REG_TEMP_HYST ;
 int TEMP_TO_REG (long) ;
 struct lm78_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int lm78_write_value (struct lm78_data*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t temp1_max_hyst_store(struct device *dev,
        struct device_attribute *da,
        const char *buf, size_t count)
{
 struct lm78_data *data = dev_get_drvdata(dev);
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->temp_hyst = TEMP_TO_REG(val);
 lm78_write_value(data, LM78_REG_TEMP_HYST, data->temp_hyst);
 mutex_unlock(&data->update_lock);
 return count;
}
