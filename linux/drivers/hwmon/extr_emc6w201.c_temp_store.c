
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct emc6w201_data {long** temp; int update_lock; struct i2c_client* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 long DIV_ROUND_CLOSEST (long,int) ;
 int EMC6W201_REG_TEMP_HIGH (int) ;
 int EMC6W201_REG_TEMP_LOW (int) ;
 long clamp_val (long,int,int) ;
 struct emc6w201_data* dev_get_drvdata (struct device*) ;
 int emc6w201_write8 (struct i2c_client*,int ,long) ;
 int kstrtol (char const*,int,long*) ;
 int min ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_store(struct device *dev,
     struct device_attribute *devattr, const char *buf,
     size_t count)
{
 struct emc6w201_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int sf = to_sensor_dev_attr_2(devattr)->index;
 int nr = to_sensor_dev_attr_2(devattr)->nr;
 int err;
 long val;
 u8 reg;

 err = kstrtol(buf, 10, &val);
 if (err < 0)
  return err;

 val = clamp_val(val, -127000, 127000);
 val = DIV_ROUND_CLOSEST(val, 1000);
 reg = (sf == min) ? EMC6W201_REG_TEMP_LOW(nr)
     : EMC6W201_REG_TEMP_HIGH(nr);

 mutex_lock(&data->update_lock);
 data->temp[sf][nr] = val;
 err = emc6w201_write8(client, reg, data->temp[sf][nr]);
 mutex_unlock(&data->update_lock);

 return err < 0 ? err : count;
}
