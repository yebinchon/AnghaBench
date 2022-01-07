
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {int valid; int update_lock; int fan_cmd1; int client; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int G762_REG_FAN_CMD1 ;
 int G762_REG_FAN_CMD1_CLK_DIV_ID0 ;
 int G762_REG_FAN_CMD1_CLK_DIV_ID1 ;
 scalar_t__ IS_ERR (struct g762_data*) ;
 int PTR_ERR (struct g762_data*) ;
 struct g762_data* g762_update_client (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_set_fan_div(struct device *dev, unsigned long val)
{
 struct g762_data *data = g762_update_client(dev);
 int ret;

 if (IS_ERR(data))
  return PTR_ERR(data);

 mutex_lock(&data->update_lock);
 switch (val) {
 case 1:
  data->fan_cmd1 &= ~G762_REG_FAN_CMD1_CLK_DIV_ID0;
  data->fan_cmd1 &= ~G762_REG_FAN_CMD1_CLK_DIV_ID1;
  break;
 case 2:
  data->fan_cmd1 |= G762_REG_FAN_CMD1_CLK_DIV_ID0;
  data->fan_cmd1 &= ~G762_REG_FAN_CMD1_CLK_DIV_ID1;
  break;
 case 4:
  data->fan_cmd1 &= ~G762_REG_FAN_CMD1_CLK_DIV_ID0;
  data->fan_cmd1 |= G762_REG_FAN_CMD1_CLK_DIV_ID1;
  break;
 case 8:
  data->fan_cmd1 |= G762_REG_FAN_CMD1_CLK_DIV_ID0;
  data->fan_cmd1 |= G762_REG_FAN_CMD1_CLK_DIV_ID1;
  break;
 default:
  ret = -EINVAL;
  goto out;
 }
 ret = i2c_smbus_write_byte_data(data->client, G762_REG_FAN_CMD1,
     data->fan_cmd1);
 data->valid = 0;
 out:
 mutex_unlock(&data->update_lock);

 return ret;
}
