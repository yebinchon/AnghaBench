
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int update_lock; int * in_max; struct i2c_client* client; } ;
typedef int ssize_t ;


 int * ADM1026_REG_IN_MAX ;
 int INS_TO_REG (int,scalar_t__) ;
 scalar_t__ INT_MAX ;
 int INT_MIN ;
 scalar_t__ NEG12_OFFSET ;
 int adm1026_write_value (struct i2c_client*,int ,int ) ;
 scalar_t__ clamp_val (long,int ,scalar_t__) ;
 struct adm1026_data* dev_get_drvdata (struct device*) ;
 int kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t in16_max_store(struct device *dev,
         struct device_attribute *attr, const char *buf,
         size_t count)
{
 struct adm1026_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 long val;
 int err;

 err = kstrtol(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 data->in_max[16] = INS_TO_REG(16,
          clamp_val(val, INT_MIN,
      INT_MAX - NEG12_OFFSET) +
          NEG12_OFFSET);
 adm1026_write_value(client, ADM1026_REG_IN_MAX[16], data->in_max[16]);
 mutex_unlock(&data->update_lock);
 return count;
}
