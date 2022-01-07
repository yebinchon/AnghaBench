
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm665_data {int valid; int faults; int* adc; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct smm665_data* ERR_PTR (int) ;
 scalar_t__ HZ ;
 int SMM665_MISC8_STATUS1 ;
 int SMM665_NUM_ADC ;
 struct smm665_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smm665_read16 (struct i2c_client*,int ) ;
 int smm665_read_adc (struct smm665_data*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct smm665_data *smm665_update_device(struct device *dev)
{
 struct smm665_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct smm665_data *ret = data;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  int i, val;




  val = smm665_read16(client, SMM665_MISC8_STATUS1);
  if (unlikely(val < 0)) {
   ret = ERR_PTR(val);
   goto abort;
  }
  data->faults = val;


  for (i = 0; i < SMM665_NUM_ADC; i++) {
   val = smm665_read_adc(data, i);
   if (unlikely(val < 0)) {
    ret = ERR_PTR(val);
    goto abort;
   }
   data->adc[i] = val;
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }
abort:
 mutex_unlock(&data->update_lock);
 return ret;
}
