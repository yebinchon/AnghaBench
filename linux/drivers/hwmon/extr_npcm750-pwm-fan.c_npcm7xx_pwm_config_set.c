
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct npcm7xx_pwm_fan_data {int * pwm_lock; int pwm_base; } ;


 int ENODEV ;
 size_t NPCM7XX_PWM_CTRL_CH0_EN_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH0_INV_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH1_EN_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH1_INV_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH2_EN_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH2_INV_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH3_EN_BIT ;
 size_t NPCM7XX_PWM_CTRL_CH3_INV_BIT ;
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ;
 int NPCM7XX_PWM_REG_CMRx (int ,size_t,size_t) ;
 int NPCM7XX_PWM_REG_CR (int ,size_t) ;
 size_t ioread32 (int ) ;
 int iowrite32 (size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int npcm7xx_pwm_config_set(struct npcm7xx_pwm_fan_data *data,
      int channel, u16 val)
{
 u32 pwm_ch = (channel % NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
 u32 module = (channel / NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE);
 u32 tmp_buf, ctrl_en_bit, env_bit;




 mutex_lock(&data->pwm_lock[module]);


 iowrite32(val, NPCM7XX_PWM_REG_CMRx(data->pwm_base, module, pwm_ch));
 tmp_buf = ioread32(NPCM7XX_PWM_REG_CR(data->pwm_base, module));

 switch (pwm_ch) {
 case 0:
  ctrl_en_bit = NPCM7XX_PWM_CTRL_CH0_EN_BIT;
  env_bit = NPCM7XX_PWM_CTRL_CH0_INV_BIT;
  break;
 case 1:
  ctrl_en_bit = NPCM7XX_PWM_CTRL_CH1_EN_BIT;
  env_bit = NPCM7XX_PWM_CTRL_CH1_INV_BIT;
  break;
 case 2:
  ctrl_en_bit = NPCM7XX_PWM_CTRL_CH2_EN_BIT;
  env_bit = NPCM7XX_PWM_CTRL_CH2_INV_BIT;
  break;
 case 3:
  ctrl_en_bit = NPCM7XX_PWM_CTRL_CH3_EN_BIT;
  env_bit = NPCM7XX_PWM_CTRL_CH3_INV_BIT;
  break;
 default:
  mutex_unlock(&data->pwm_lock[module]);
  return -ENODEV;
 }

 if (val == 0) {

  tmp_buf &= ~ctrl_en_bit;
  tmp_buf |= env_bit;
 } else {

  tmp_buf |= ctrl_en_bit;
  tmp_buf &= ~env_bit;
 }

 iowrite32(tmp_buf, NPCM7XX_PWM_REG_CR(data->pwm_base, module));
 mutex_unlock(&data->pwm_lock[module]);

 return 0;
}
