
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm90_data {int alarms; int update_lock; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int REMOTE_OFFSET ;
 struct lm90_data* dev_get_drvdata (struct device*) ;
 int* lm90_crit_alarm_bits ;
 int* lm90_emergency_alarm_bits ;
 int* lm90_fault_bits ;
 long lm90_get_temp11 (struct lm90_data*,int ) ;
 long lm90_get_temp8 (struct lm90_data*,int ) ;
 long lm90_get_temphyst (struct lm90_data*,int ) ;
 int* lm90_max_alarm_bits ;
 int* lm90_min_alarm_bits ;
 int * lm90_temp_crit_index ;
 int * lm90_temp_emerg_index ;
 int * lm90_temp_index ;
 int * lm90_temp_max_index ;
 int * lm90_temp_min_index ;
 int lm90_update_device (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lm90_temp_read(struct device *dev, u32 attr, int channel, long *val)
{
 struct lm90_data *data = dev_get_drvdata(dev);
 int err;

 mutex_lock(&data->update_lock);
 err = lm90_update_device(dev);
 mutex_unlock(&data->update_lock);
 if (err)
  return err;

 switch (attr) {
 case 133:
  *val = lm90_get_temp11(data, lm90_temp_index[channel]);
  break;
 case 129:
  *val = (data->alarms >> lm90_min_alarm_bits[channel]) & 1;
  break;
 case 131:
  *val = (data->alarms >> lm90_max_alarm_bits[channel]) & 1;
  break;
 case 139:
  *val = (data->alarms >> lm90_crit_alarm_bits[channel]) & 1;
  break;
 case 136:
  *val = (data->alarms >> lm90_emergency_alarm_bits[channel]) & 1;
  break;
 case 134:
  *val = (data->alarms >> lm90_fault_bits[channel]) & 1;
  break;
 case 130:
  if (channel == 0)
   *val = lm90_get_temp8(data,
           lm90_temp_min_index[channel]);
  else
   *val = lm90_get_temp11(data,
            lm90_temp_min_index[channel]);
  break;
 case 132:
  if (channel == 0)
   *val = lm90_get_temp8(data,
           lm90_temp_max_index[channel]);
  else
   *val = lm90_get_temp11(data,
            lm90_temp_max_index[channel]);
  break;
 case 140:
  *val = lm90_get_temp8(data, lm90_temp_crit_index[channel]);
  break;
 case 138:
  *val = lm90_get_temphyst(data, lm90_temp_crit_index[channel]);
  break;
 case 137:
  *val = lm90_get_temp8(data, lm90_temp_emerg_index[channel]);
  break;
 case 135:
  *val = lm90_get_temphyst(data, lm90_temp_emerg_index[channel]);
  break;
 case 128:
  *val = lm90_get_temp11(data, REMOTE_OFFSET);
  break;
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
