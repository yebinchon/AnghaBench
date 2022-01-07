
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fts_data {int valid; int update_lock; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef long ssize_t ;
struct TYPE_2__ {int index; } ;


 long EINVAL ;
 int FTS_REG_FAN_CONTROL (int) ;
 struct fts_data* dev_get_drvdata (struct device*) ;
 long fts_read_byte (int ,int ) ;
 long fts_update_device (struct fts_data*) ;
 long fts_write_byte (int ,int ,long) ;
 scalar_t__ kstrtoul (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
fan_alarm_store(struct device *dev, struct device_attribute *devattr,
  const char *buf, size_t count)
{
 struct fts_data *data = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(devattr)->index;
 long ret;

 ret = fts_update_device(data);
 if (ret < 0)
  return ret;

 if (kstrtoul(buf, 10, &ret) || ret != 0)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 ret = fts_read_byte(data->client, FTS_REG_FAN_CONTROL(index));
 if (ret < 0)
  goto error;

 ret = fts_write_byte(data->client, FTS_REG_FAN_CONTROL(index),
        ret | 0x1);
 if (ret < 0)
  goto error;

 data->valid = 0;
 ret = count;
error:
 mutex_unlock(&data->update_lock);
 return ret;
}
