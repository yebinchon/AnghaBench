
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm93_data {int* vccp_limits; int update_lock; TYPE_1__* block7; int * vid; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int min; } ;


 int LM93_IN_REL_TO_REG (unsigned long,int ,long) ;
 int LM93_IN_TO_REG (int,unsigned long) ;
 int LM93_REG_IN_MIN (int) ;
 int LM93_REG_VCCP_LIMIT_OFF (int) ;
 long LM93_VID_FROM_REG (int ) ;
 struct lm93_data* dev_get_drvdata (struct device*) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__* vccp_limit_type ;

__attribute__((used)) static ssize_t in_min_store(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int vccp = nr - 6;
 long vid;
 unsigned long val;
 int err;

 err = kstrtoul(buf, 10, &val);
 if (err)
  return err;

 mutex_lock(&data->update_lock);
 if ((nr == 6 || nr == 7) && vccp_limit_type[vccp]) {
  vid = LM93_VID_FROM_REG(data->vid[vccp]);
  data->vccp_limits[vccp] = (data->vccp_limits[vccp] & 0xf0) |
    LM93_IN_REL_TO_REG(val, 0, vid);
  lm93_write_byte(client, LM93_REG_VCCP_LIMIT_OFF(vccp),
    data->vccp_limits[vccp]);
 } else {
  data->block7[nr].min = LM93_IN_TO_REG(nr, val);
  lm93_write_byte(client, LM93_REG_IN_MIN(nr),
    data->block7[nr].min);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
