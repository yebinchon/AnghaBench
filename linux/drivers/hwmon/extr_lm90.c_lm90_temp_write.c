
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm90_data {int update_lock; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int REMOTE_OFFSET ;
 struct lm90_data* dev_get_drvdata (struct device*) ;






 int lm90_set_temp11 (struct lm90_data*,int ,long) ;
 int lm90_set_temp8 (struct lm90_data*,int ,long) ;
 int lm90_set_temphyst (struct lm90_data*,long) ;
 int * lm90_temp_crit_index ;
 int * lm90_temp_emerg_index ;
 int * lm90_temp_max_index ;
 int * lm90_temp_min_index ;
 int lm90_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm90_temp_write(struct device *dev, u32 attr, int channel, long val)
{
 struct lm90_data *data = dev_get_drvdata(dev);
 int err;

 mutex_lock(&data->update_lock);

 err = lm90_update_device(dev);
 if (err)
  goto error;

 switch (attr) {
 case 129:
  if (channel == 0)
   err = lm90_set_temp8(data,
           lm90_temp_min_index[channel],
           val);
  else
   err = lm90_set_temp11(data,
           lm90_temp_min_index[channel],
           val);
  break;
 case 130:
  if (channel == 0)
   err = lm90_set_temp8(data,
          lm90_temp_max_index[channel],
          val);
  else
   err = lm90_set_temp11(data,
           lm90_temp_max_index[channel],
           val);
  break;
 case 133:
  err = lm90_set_temp8(data, lm90_temp_crit_index[channel], val);
  break;
 case 132:
  err = lm90_set_temphyst(data, val);
  break;
 case 131:
  err = lm90_set_temp8(data, lm90_temp_emerg_index[channel], val);
  break;
 case 128:
  err = lm90_set_temp11(data, REMOTE_OFFSET, val);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }
error:
 mutex_unlock(&data->update_lock);

 return err;
}
