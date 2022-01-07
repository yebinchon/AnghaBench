
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmfts_data {unsigned long hover_enabled; int mutex; int client; scalar_t__ running; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int STMFTS_SS_HOVER_SENSE_OFF ;
 int STMFTS_SS_HOVER_SENSE_ON ;
 struct stmfts_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_write_byte (int ,int ) ;
 scalar_t__ kstrtoul (char const*,int ,unsigned long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t stmfts_sysfs_hover_enable_write(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t len)
{
 struct stmfts_data *sdata = dev_get_drvdata(dev);
 unsigned long value;
 int err = 0;

 if (kstrtoul(buf, 0, &value))
  return -EINVAL;

 mutex_lock(&sdata->mutex);

 if (value & sdata->hover_enabled)
  goto out;

 if (sdata->running)
  err = i2c_smbus_write_byte(sdata->client,
        value ? STMFTS_SS_HOVER_SENSE_ON :
         STMFTS_SS_HOVER_SENSE_OFF);

 if (!err)
  sdata->hover_enabled = !!value;

out:
 mutex_unlock(&sdata->mutex);

 return len;
}
