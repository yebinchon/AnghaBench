
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adt7475_data {int valid; int lock; scalar_t__ measure_updated; } ;


 struct adt7475_data* ERR_PTR (int) ;
 int HZ ;
 int adt7475_update_measure (struct device*) ;
 struct adt7475_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct adt7475_data *adt7475_update_device(struct device *dev)
{
 struct adt7475_data *data = dev_get_drvdata(dev);
 int ret;

 mutex_lock(&data->lock);


 if (time_after(jiffies, data->measure_updated + HZ * 2) ||
     !data->valid) {
  ret = adt7475_update_measure(dev);
  if (ret) {
   data->valid = 0;
   mutex_unlock(&data->lock);
   return ERR_PTR(ret);
  }
  data->measure_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->lock);

 return data;
}
