
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct npcm7xx_pwm_fan_data {int pwm_base; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ;
 int NPCM7XX_PWM_REG_CMRx (int ,int,int) ;
 struct npcm7xx_pwm_fan_data* dev_get_drvdata (struct device*) ;

 long ioread32 (int ) ;

__attribute__((used)) static int npcm7xx_read_pwm(struct device *dev, u32 attr, int channel,
       long *val)
{
 struct npcm7xx_pwm_fan_data *data = dev_get_drvdata(dev);
 u32 pmw_ch = (channel % NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
 u32 module = (channel / NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);

 switch (attr) {
 case 128:
  *val = ioread32
   (NPCM7XX_PWM_REG_CMRx(data->pwm_base, module, pmw_ch));
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
