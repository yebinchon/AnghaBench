
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct vadc_linear_graph {int dummy; } ;
typedef int s64 ;


 int ARRAY_SIZE (int ) ;
 int adcmap_100k_104ef_104fb ;
 int div64_s64 (int ,int) ;
 int qcom_vadc_map_voltage_temp (int ,int ,int ,int*) ;
 int qcom_vadc_scale_calib (struct vadc_linear_graph const*,int ,int,int *) ;

__attribute__((used)) static int qcom_vadc_scale_therm(const struct vadc_linear_graph *calib_graph,
     const struct vadc_prescale_ratio *prescale,
     bool absolute, u16 adc_code,
     int *result_mdec)
{
 s64 voltage = 0;
 int ret;

 qcom_vadc_scale_calib(calib_graph, adc_code, absolute, &voltage);

 if (absolute)
  voltage = div64_s64(voltage, 1000);

 ret = qcom_vadc_map_voltage_temp(adcmap_100k_104ef_104fb,
      ARRAY_SIZE(adcmap_100k_104ef_104fb),
      voltage, result_mdec);
 if (ret)
  return ret;

 *result_mdec *= 1000;

 return 0;
}
