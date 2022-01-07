
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jc42_data {int valid; int* temp; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 struct jc42_data* ERR_PTR (int) ;
 scalar_t__ HZ ;
 struct jc42_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_word_swapped (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int t_num_temp ;
 int * temp_regs ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct jc42_data *jc42_update_device(struct device *dev)
{
 struct jc42_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 struct jc42_data *ret = data;
 int i, val;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ) || !data->valid) {
  for (i = 0; i < t_num_temp; i++) {
   val = i2c_smbus_read_word_swapped(client, temp_regs[i]);
   if (val < 0) {
    ret = ERR_PTR(val);
    goto abort;
   }
   data->temp[i] = val;
  }
  data->last_updated = jiffies;
  data->valid = 1;
 }
abort:
 mutex_unlock(&data->update_lock);
 return ret;
}
