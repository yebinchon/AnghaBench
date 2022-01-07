
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_time_unit; int avg_num; int clk_pre_div; } ;
struct imx7d_adc {TYPE_1__ adc_feature; } ;


 int IMX7D_ADC_ANALOG_CLK_PRE_DIV_4 ;
 int IMX7D_ADC_AVERAGE_NUM_32 ;

__attribute__((used)) static void imx7d_adc_feature_config(struct imx7d_adc *info)
{
 info->adc_feature.clk_pre_div = IMX7D_ADC_ANALOG_CLK_PRE_DIV_4;
 info->adc_feature.avg_num = IMX7D_ADC_AVERAGE_NUM_32;
 info->adc_feature.core_time_unit = 1;
}
