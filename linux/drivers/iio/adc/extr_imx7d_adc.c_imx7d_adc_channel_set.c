
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {size_t avg_num; } ;
struct imx7d_adc {int channel; scalar_t__ regs; TYPE_1__ adc_feature; } ;


 int IMX7D_EACH_CHANNEL_REG_OFFSET ;
 scalar_t__ IMX7D_REG_ADC_CHANNEL_CFG2_BASE ;
 int IMX7D_REG_ADC_CH_CFG1_CHANNEL_AVG_EN ;
 int IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN ;
 int IMX7D_REG_ADC_CH_CFG1_CHANNEL_SEL (int) ;
 int IMX7D_REG_ADC_CH_CFG1_CHANNEL_SINGLE ;
 int* imx7d_adc_average_num ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void imx7d_adc_channel_set(struct imx7d_adc *info)
{
 u32 cfg1 = 0;
 u32 cfg2;
 u32 channel;

 channel = info->channel;


 cfg1 |= (IMX7D_REG_ADC_CH_CFG1_CHANNEL_EN |
   IMX7D_REG_ADC_CH_CFG1_CHANNEL_SINGLE |
   IMX7D_REG_ADC_CH_CFG1_CHANNEL_AVG_EN);







 cfg1 |= IMX7D_REG_ADC_CH_CFG1_CHANNEL_SEL(channel);





 cfg2 = readl(info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel +
       IMX7D_REG_ADC_CHANNEL_CFG2_BASE);

 cfg2 |= imx7d_adc_average_num[info->adc_feature.avg_num];





 writel(cfg2, info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel +
        IMX7D_REG_ADC_CHANNEL_CFG2_BASE);
 writel(cfg1, info->regs + IMX7D_EACH_CHANNEL_REG_OFFSET * channel);
}
