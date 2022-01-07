
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct adc5_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int adcmap_100k_104ef_104fb_1875_vref ;
 int qcom_vadc_map_voltage_temp (int ,int ,int,int*) ;
 int qcom_vadc_scale_code_voltage_factor (int ,struct vadc_prescale_ratio const*,struct adc5_data const*,int) ;

__attribute__((used)) static int qcom_vadc_scale_hw_calib_therm(
    const struct vadc_prescale_ratio *prescale,
    const struct adc5_data *data,
    u16 adc_code, int *result_mdec)
{
 int voltage;

 voltage = qcom_vadc_scale_code_voltage_factor(adc_code,
    prescale, data, 1000);


 return qcom_vadc_map_voltage_temp(adcmap_100k_104ef_104fb_1875_vref,
     ARRAY_SIZE(adcmap_100k_104ef_104fb_1875_vref),
     voltage, result_mdec);
}
