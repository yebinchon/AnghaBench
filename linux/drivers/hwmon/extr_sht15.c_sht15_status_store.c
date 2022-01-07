
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sht15_data {int val_status; int read_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int SHT15_STATUS_HEATER ;
 struct sht15_data* dev_get_drvdata (struct device*) ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sht15_send_status (struct sht15_data*,int) ;

__attribute__((used)) static ssize_t sht15_status_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 int ret;
 struct sht15_data *data = dev_get_drvdata(dev);
 long value;
 u8 status;

 if (kstrtol(buf, 10, &value))
  return -EINVAL;

 mutex_lock(&data->read_lock);
 status = data->val_status & 0x07;
 if (!!value)
  status |= SHT15_STATUS_HEATER;
 else
  status &= ~SHT15_STATUS_HEATER;

 ret = sht15_send_status(data, status);
 mutex_unlock(&data->read_lock);

 return ret ? ret : count;
}
