
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct npcm7xx_pwm_fan_data {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 long NPCM7XX_PWM_CMR_MAX ;
 struct npcm7xx_pwm_fan_data* dev_get_drvdata (struct device*) ;

 int npcm7xx_pwm_config_set (struct npcm7xx_pwm_fan_data*,int,int ) ;

__attribute__((used)) static int npcm7xx_write_pwm(struct device *dev, u32 attr, int channel,
        long val)
{
 struct npcm7xx_pwm_fan_data *data = dev_get_drvdata(dev);
 int err;

 switch (attr) {
 case 128:
  if (val < 0 || val > NPCM7XX_PWM_CMR_MAX)
   return -EINVAL;
  err = npcm7xx_pwm_config_set(data, channel, (u16)val);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
