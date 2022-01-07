
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct npcm7xx_pwm_fan_data {int* pwm_present; int* fan_present; TYPE_1__* fan_dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int fan_st_flg; } ;


 int EINVAL ;
 int ENOMEM ;
 int FAN_INIT ;
 int GFP_KERNEL ;
 int NPCM7XX_PWM_CMR_DEFAULT_NUM ;
 int* devm_kcalloc (struct device*,int,int,int ) ;
 int npcm7xx_create_pwm_cooling (struct device*,struct device_node*,struct npcm7xx_pwm_fan_data*,size_t,int) ;
 int npcm7xx_pwm_config_set (struct npcm7xx_pwm_fan_data*,size_t,int ) ;
 int of_property_count_u8_elems (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,size_t*) ;
 int of_property_read_u8_array (struct device_node*,char*,int*,int) ;

__attribute__((used)) static int npcm7xx_en_pwm_fan(struct device *dev,
         struct device_node *child,
         struct npcm7xx_pwm_fan_data *data)
{
 u8 *fan_ch;
 u32 pwm_port;
 int ret, fan_cnt;
 u8 index, ch;

 ret = of_property_read_u32(child, "reg", &pwm_port);
 if (ret)
  return ret;

 data->pwm_present[pwm_port] = 1;
 ret = npcm7xx_pwm_config_set(data, pwm_port,
         NPCM7XX_PWM_CMR_DEFAULT_NUM);

 ret = of_property_count_u8_elems(child, "cooling-levels");
 if (ret > 0) {
  ret = npcm7xx_create_pwm_cooling(dev, child, data, pwm_port,
       ret);
  if (ret)
   return ret;
 }

 fan_cnt = of_property_count_u8_elems(child, "fan-tach-ch");
 if (fan_cnt < 1)
  return -EINVAL;

 fan_ch = devm_kcalloc(dev, fan_cnt, sizeof(*fan_ch), GFP_KERNEL);
 if (!fan_ch)
  return -ENOMEM;

 ret = of_property_read_u8_array(child, "fan-tach-ch", fan_ch, fan_cnt);
 if (ret)
  return ret;

 for (ch = 0; ch < fan_cnt; ch++) {
  index = fan_ch[ch];
  data->fan_present[index] = 1;
  data->fan_dev[index].fan_st_flg = FAN_INIT;
 }

 return 0;
}
