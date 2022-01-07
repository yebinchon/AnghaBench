
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct npcm7xx_pwm_fan_data {int input_clk_freq; TYPE_1__* fan_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int fan_cnt; int fan_pls_per_rev; } ;


 int EOPNOTSUPP ;
 struct npcm7xx_pwm_fan_data* dev_get_drvdata (struct device*) ;


__attribute__((used)) static int npcm7xx_read_fan(struct device *dev, u32 attr, int channel,
       long *val)
{
 struct npcm7xx_pwm_fan_data *data = dev_get_drvdata(dev);

 switch (attr) {
 case 128:
  *val = 0;
  if (data->fan_dev[channel].fan_cnt <= 0)
   return data->fan_dev[channel].fan_cnt;


  if (data->fan_dev[channel].fan_cnt > 0 &&
      data->fan_dev[channel].fan_pls_per_rev > 0)
   *val = ((data->input_clk_freq * 60) /
    (data->fan_dev[channel].fan_cnt *
     data->fan_dev[channel].fan_pls_per_rev));
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
