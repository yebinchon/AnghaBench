
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shtc1_data {int valid; int temperature; int humidity; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;
typedef int __be16 ;


 struct shtc1_data* ERR_PTR (int) ;
 int HZ ;
 int SHTC1_RESPONSE_LENGTH ;
 int be16_to_cpup (int *) ;
 struct shtc1_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int shtc1_update_values (struct i2c_client*,struct shtc1_data*,unsigned char*,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct shtc1_data *shtc1_update_client(struct device *dev)
{
 struct shtc1_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned char buf[SHTC1_RESPONSE_LENGTH];
 int val;
 int ret = 0;

 mutex_lock(&data->update_lock);

 if (time_after(jiffies, data->last_updated + HZ / 10) || !data->valid) {
  ret = shtc1_update_values(client, data, buf, sizeof(buf));
  if (ret)
   goto out;
  val = be16_to_cpup((__be16 *)buf);
  data->temperature = ((21875 * val) >> 13) - 45000;
  val = be16_to_cpup((__be16 *)(buf + 3));
  data->humidity = ((12500 * val) >> 13);

  data->last_updated = jiffies;
  data->valid = 1;
 }

out:
 mutex_unlock(&data->update_lock);

 return ret == 0 ? data : ERR_PTR(ret);
}
