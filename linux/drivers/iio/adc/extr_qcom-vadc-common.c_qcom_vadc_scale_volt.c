
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_prescale_ratio {int den; int num; } ;
struct vadc_linear_graph {int dummy; } ;
typedef int s64 ;


 int div64_s64 (int,int ) ;
 int qcom_vadc_scale_calib (struct vadc_linear_graph const*,int ,int,int*) ;

__attribute__((used)) static int qcom_vadc_scale_volt(const struct vadc_linear_graph *calib_graph,
    const struct vadc_prescale_ratio *prescale,
    bool absolute, u16 adc_code,
    int *result_uv)
{
 s64 voltage = 0, result = 0;

 qcom_vadc_scale_calib(calib_graph, adc_code, absolute, &voltage);

 voltage = voltage * prescale->den;
 result = div64_s64(voltage, prescale->num);
 *result_uv = result;

 return 0;
}
