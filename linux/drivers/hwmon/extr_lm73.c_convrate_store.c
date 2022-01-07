
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm73_data {int ctrl; int lock; int client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ s32 ;


 int ARRAY_SIZE (unsigned long*) ;
 int LM73_CTRL_RES_SHIFT ;
 int LM73_CTRL_TO_MASK ;
 int LM73_REG_CTRL ;
 struct lm73_data* dev_get_drvdata (struct device*) ;
 scalar_t__ i2c_smbus_write_byte_data (int ,int ,int) ;
 scalar_t__ kstrtoul (char const*,int,unsigned long*) ;
 unsigned long* lm73_convrates ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t convrate_store(struct device *dev, struct device_attribute *da,
         const char *buf, size_t count)
{
 struct lm73_data *data = dev_get_drvdata(dev);
 unsigned long convrate;
 s32 err;
 int res = 0;

 err = kstrtoul(buf, 10, &convrate);
 if (err < 0)
  return err;







 while (res < (ARRAY_SIZE(lm73_convrates) - 1) &&
   convrate > lm73_convrates[res])
  res++;

 mutex_lock(&data->lock);
 data->ctrl &= LM73_CTRL_TO_MASK;
 data->ctrl |= res << LM73_CTRL_RES_SHIFT;
 err = i2c_smbus_write_byte_data(data->client, LM73_REG_CTRL,
     data->ctrl);
 mutex_unlock(&data->lock);

 if (err < 0)
  return err;

 return count;
}
