
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int clamp_val (unsigned long,int ,int) ;
 struct lm63_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm63_set_convrate (struct lm63_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t update_interval_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct lm63_data *data = dev_get_drvdata(dev);
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 lm63_set_convrate(data, clamp_val(val, 0, 100000));
 mutex_unlock(&data->update_lock);

 return count;
}
