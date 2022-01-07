
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm90_data {long update_interval; long alarms; int update_lock; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 struct lm90_data* dev_get_drvdata (struct device*) ;


 int lm90_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm90_chip_read(struct device *dev, u32 attr, int channel, long *val)
{
 struct lm90_data *data = dev_get_drvdata(dev);
 int err;

 mutex_lock(&data->update_lock);
 err = lm90_update_device(dev);
 mutex_unlock(&data->update_lock);
 if (err)
  return err;

 switch (attr) {
 case 128:
  *val = data->update_interval;
  break;
 case 129:
  *val = data->alarms;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
