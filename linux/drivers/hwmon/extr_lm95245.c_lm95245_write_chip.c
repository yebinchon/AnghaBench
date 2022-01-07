
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm95245_data {int update_lock; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 struct lm95245_data* dev_get_drvdata (struct device*) ;

 int lm95245_set_conversion_rate (struct lm95245_data*,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm95245_write_chip(struct device *dev, u32 attr, int channel,
         long val)
{
 struct lm95245_data *data = dev_get_drvdata(dev);
 int ret;

 switch (attr) {
 case 128:
  mutex_lock(&data->update_lock);
  ret = lm95245_set_conversion_rate(data, val);
  mutex_unlock(&data->update_lock);
  return ret;
 default:
  return -EOPNOTSUPP;
 }
}
