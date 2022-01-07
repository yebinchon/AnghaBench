
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {int valid; int update_lock; int set_cnt; int client; int fan_cmd2; int fan_cmd1; int clk_freq; } ;
struct device {int dummy; } ;


 int G762_CLKDIV_FROM_REG (int ) ;
 int G762_GEARMULT_FROM_REG (int ) ;
 int G762_PULSE_FROM_REG (int ) ;
 int G762_REG_SET_CNT ;
 scalar_t__ IS_ERR (struct g762_data*) ;
 int PTR_ERR (struct g762_data*) ;
 int cnt_from_rpm (unsigned long,int ,int ,int ,int ) ;
 struct g762_data* g762_update_client (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int do_set_fan_target(struct device *dev, unsigned long val)
{
 struct g762_data *data = g762_update_client(dev);
 int ret;

 if (IS_ERR(data))
  return PTR_ERR(data);

 mutex_lock(&data->update_lock);
 data->set_cnt = cnt_from_rpm(val, data->clk_freq,
         G762_PULSE_FROM_REG(data->fan_cmd1),
         G762_CLKDIV_FROM_REG(data->fan_cmd1),
         G762_GEARMULT_FROM_REG(data->fan_cmd2));
 ret = i2c_smbus_write_byte_data(data->client, G762_REG_SET_CNT,
     data->set_cnt);
 data->valid = 0;
 mutex_unlock(&data->update_lock);

 return ret;
}
