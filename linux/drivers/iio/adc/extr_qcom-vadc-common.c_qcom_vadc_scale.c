
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct vadc_linear_graph {int dummy; } ;
typedef enum vadc_scale_fn_type { ____Placeholder_vadc_scale_fn_type } vadc_scale_fn_type ;


 int EINVAL ;





 int qcom_vadc_scale_chg_temp (struct vadc_linear_graph const*,struct vadc_prescale_ratio const*,int,int ,int*) ;
 int qcom_vadc_scale_die_temp (struct vadc_linear_graph const*,struct vadc_prescale_ratio const*,int,int ,int*) ;
 int qcom_vadc_scale_therm (struct vadc_linear_graph const*,struct vadc_prescale_ratio const*,int,int ,int*) ;
 int qcom_vadc_scale_volt (struct vadc_linear_graph const*,struct vadc_prescale_ratio const*,int,int ,int*) ;

int qcom_vadc_scale(enum vadc_scale_fn_type scaletype,
      const struct vadc_linear_graph *calib_graph,
      const struct vadc_prescale_ratio *prescale,
      bool absolute,
      u16 adc_code, int *result)
{
 switch (scaletype) {
 case 132:
  return qcom_vadc_scale_volt(calib_graph, prescale,
         absolute, adc_code,
         result);
 case 129:
 case 128:
  return qcom_vadc_scale_therm(calib_graph, prescale,
          absolute, adc_code,
          result);
 case 131:
  return qcom_vadc_scale_die_temp(calib_graph, prescale,
      absolute, adc_code,
      result);
 case 130:
  return qcom_vadc_scale_chg_temp(calib_graph, prescale,
      absolute, adc_code,
      result);
 default:
  return -EINVAL;
 }
}
