
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lm80_data {int** fan; int* fan_div; int update_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int) ;
 int EINVAL ;
 unsigned long FAN_FROM_REG (int,int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int LM80_REG_FANDIV ;
 int LM80_REG_FAN_MIN (int) ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct lm80_data* dev_get_drvdata (struct device*) ;
 size_t f_min ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm80_read_value (struct i2c_client*,int ) ;
 int lm80_write_value (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_store(struct device *dev,
        struct device_attribute *attr, const char *buf,
        size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm80_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 unsigned long min, val;
 u8 reg;
 int rv;

 rv = kstrtoul(buf, 10, &val);
 if (rv < 0)
  return rv;


 mutex_lock(&data->update_lock);
 min = FAN_FROM_REG(data->fan[f_min][nr],
      DIV_FROM_REG(data->fan_div[nr]));

 switch (val) {
 case 1:
  data->fan_div[nr] = 0;
  break;
 case 2:
  data->fan_div[nr] = 1;
  break;
 case 4:
  data->fan_div[nr] = 2;
  break;
 case 8:
  data->fan_div[nr] = 3;
  break;
 default:
  dev_err(dev,
   "fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\n",
   val);
  mutex_unlock(&data->update_lock);
  return -EINVAL;
 }

 rv = lm80_read_value(client, LM80_REG_FANDIV);
 if (rv < 0) {
  mutex_unlock(&data->update_lock);
  return rv;
 }
 reg = (rv & ~(3 << (2 * (nr + 1))))
     | (data->fan_div[nr] << (2 * (nr + 1)));
 lm80_write_value(client, LM80_REG_FANDIV, reg);


 data->fan[f_min][nr] = FAN_TO_REG(min, DIV_FROM_REG(data->fan_div[nr]));
 lm80_write_value(client, LM80_REG_FAN_MIN(nr + 1),
    data->fan[f_min][nr]);
 mutex_unlock(&data->update_lock);

 return count;
}
