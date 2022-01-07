
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int core_time_unit; } ;
struct imx7d_adc {int pre_div_num; TYPE_1__ adc_feature; } ;


 int IMX7D_ADC_INPUT_CLK ;

__attribute__((used)) static u32 imx7d_adc_get_sample_rate(struct imx7d_adc *info)
{
 u32 analogue_core_clk;
 u32 core_time_unit = info->adc_feature.core_time_unit;
 u32 tmp;

 analogue_core_clk = IMX7D_ADC_INPUT_CLK / info->pre_div_num;
 tmp = (core_time_unit + 1) * 6;

 return analogue_core_clk / tmp;
}
