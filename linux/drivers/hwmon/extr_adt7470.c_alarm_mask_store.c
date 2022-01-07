
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {long alarms_mask; int lock; int client; } ;
typedef size_t ssize_t ;


 int ADT7470_REG_ALARM1_MASK ;
 size_t EINVAL ;
 int adt7470_write_word_data (int ,int ,long) ;
 struct adt7470_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtoul (char const*,int ,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t alarm_mask_store(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct adt7470_data *data = dev_get_drvdata(dev);
 long mask;

 if (kstrtoul(buf, 0, &mask))
  return -EINVAL;

 if (mask & ~0xffff)
  return -EINVAL;

 mutex_lock(&data->lock);
 data->alarms_mask = mask;
 adt7470_write_word_data(data->client, ADT7470_REG_ALARM1_MASK, mask);
 mutex_unlock(&data->lock);

 return count;
}
