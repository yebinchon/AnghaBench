
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct npcm7xx_pwm_fan_data {int pwm_clk_freq; int pwm_base; int pwm_clk; } ;


 int DIV_ROUND_CLOSEST (int,int ) ;
 int MIN_PRESCALE1 ;
 int NPCM7XX_PWM_COUNTER_DEFAULT_NUM ;
 int NPCM7XX_PWM_CTRL_MODE_DEFAULT ;
 int NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE ;
 int NPCM7XX_PWM_MAX_MODULES ;
 int NPCM7XX_PWM_PRESCALE2_DEFAULT ;
 int NPCM7XX_PWM_PRESCALE_SHIFT_CH01 ;
 int NPCM7XX_PWM_REG_CNRx (int ,int,int) ;
 int NPCM7XX_PWM_REG_CR (int ,int) ;
 int NPCM7XX_PWM_REG_CSR (int ,int) ;
 int NPCM7XX_PWM_REG_PR (int ,int) ;
 int PWM_OUTPUT_FREQ_25KHZ ;
 int PWN_CNT_DEFAULT ;
 int clk_get_rate (int ) ;
 int iowrite32 (int,int ) ;

__attribute__((used)) static u32 npcm7xx_pwm_init(struct npcm7xx_pwm_fan_data *data)
{
 int m, ch;
 u32 prescale_val, output_freq;

 data->pwm_clk_freq = clk_get_rate(data->pwm_clk);


 output_freq = data->pwm_clk_freq / PWN_CNT_DEFAULT;
 prescale_val = DIV_ROUND_CLOSEST(output_freq, PWM_OUTPUT_FREQ_25KHZ);


 if (prescale_val < MIN_PRESCALE1)
  prescale_val = MIN_PRESCALE1;




 prescale_val--;


 prescale_val |= (prescale_val << NPCM7XX_PWM_PRESCALE_SHIFT_CH01);

 for (m = 0; m < NPCM7XX_PWM_MAX_MODULES ; m++) {
  iowrite32(prescale_val, NPCM7XX_PWM_REG_PR(data->pwm_base, m));
  iowrite32(NPCM7XX_PWM_PRESCALE2_DEFAULT,
     NPCM7XX_PWM_REG_CSR(data->pwm_base, m));
  iowrite32(NPCM7XX_PWM_CTRL_MODE_DEFAULT,
     NPCM7XX_PWM_REG_CR(data->pwm_base, m));

  for (ch = 0; ch < NPCM7XX_PWM_MAX_CHN_NUM_IN_A_MODULE; ch++) {
   iowrite32(NPCM7XX_PWM_COUNTER_DEFAULT_NUM,
      NPCM7XX_PWM_REG_CNRx(data->pwm_base, m, ch));
  }
 }

 return output_freq / ((prescale_val & 0xf) + 1);
}
