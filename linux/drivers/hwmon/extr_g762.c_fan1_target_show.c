
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {int update_lock; int fan_cmd2; int fan_cmd1; int clk_freq; int set_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int G762_CLKDIV_FROM_REG (int ) ;
 int G762_GEARMULT_FROM_REG (int ) ;
 int G762_PULSE_FROM_REG (int ) ;
 scalar_t__ IS_ERR (struct g762_data*) ;
 int PTR_ERR (struct g762_data*) ;
 struct g762_data* g762_update_client (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int rpm_from_cnt (int ,int ,int ,int ,int ) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t fan1_target_show(struct device *dev,
    struct device_attribute *da, char *buf)
{
 struct g762_data *data = g762_update_client(dev);
 unsigned int rpm;

 if (IS_ERR(data))
  return PTR_ERR(data);

 mutex_lock(&data->update_lock);
 rpm = rpm_from_cnt(data->set_cnt, data->clk_freq,
      G762_PULSE_FROM_REG(data->fan_cmd1),
      G762_CLKDIV_FROM_REG(data->fan_cmd1),
      G762_GEARMULT_FROM_REG(data->fan_cmd2));
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%u\n", rpm);
}
