
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct g762_data {int valid; int set_cnt; int act_cnt; int fan_sta; int set_out; int fan_cmd1; int fan_cmd2; int update_lock; scalar_t__ last_updated; struct i2c_client* client; } ;
struct device {int dummy; } ;


 struct g762_data* ERR_PTR (int) ;
 int G762_REG_ACT_CNT ;
 int G762_REG_FAN_CMD1 ;
 int G762_REG_FAN_CMD2 ;
 int G762_REG_FAN_STA ;
 int G762_REG_SET_CNT ;
 int G762_REG_SET_OUT ;
 scalar_t__ G762_UPDATE_INTERVAL ;
 struct g762_data* dev_get_drvdata (struct device*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static struct g762_data *g762_update_client(struct device *dev)
{
 struct g762_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret = 0;

 mutex_lock(&data->update_lock);
 if (time_before(jiffies, data->last_updated + G762_UPDATE_INTERVAL) &&
     likely(data->valid))
  goto out;

 ret = i2c_smbus_read_byte_data(client, G762_REG_SET_CNT);
 if (ret < 0)
  goto out;
 data->set_cnt = ret;

 ret = i2c_smbus_read_byte_data(client, G762_REG_ACT_CNT);
 if (ret < 0)
  goto out;
 data->act_cnt = ret;

 ret = i2c_smbus_read_byte_data(client, G762_REG_FAN_STA);
 if (ret < 0)
  goto out;
 data->fan_sta = ret;

 ret = i2c_smbus_read_byte_data(client, G762_REG_SET_OUT);
 if (ret < 0)
  goto out;
 data->set_out = ret;

 ret = i2c_smbus_read_byte_data(client, G762_REG_FAN_CMD1);
 if (ret < 0)
  goto out;
 data->fan_cmd1 = ret;

 ret = i2c_smbus_read_byte_data(client, G762_REG_FAN_CMD2);
 if (ret < 0)
  goto out;
 data->fan_cmd2 = ret;

 data->last_updated = jiffies;
 data->valid = 1;
 out:
 mutex_unlock(&data->update_lock);

 if (ret < 0)
  data = ERR_PTR(ret);

 return data;
}
