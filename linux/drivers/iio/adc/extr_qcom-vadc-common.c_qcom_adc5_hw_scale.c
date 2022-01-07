
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct adc5_data {int dummy; } ;
typedef enum vadc_scale_fn_type { ____Placeholder_vadc_scale_fn_type } vadc_scale_fn_type ;
struct TYPE_2__ {int (* scale_fn ) (struct vadc_prescale_ratio const*,struct adc5_data const*,int ,int*) ;} ;


 int EINVAL ;
 int SCALE_HW_CALIB_DEFAULT ;
 int SCALE_HW_CALIB_INVALID ;
 int pr_err (char*,int) ;
 TYPE_1__* scale_adc5_fn ;
 int stub1 (struct vadc_prescale_ratio const*,struct adc5_data const*,int ,int*) ;

int qcom_adc5_hw_scale(enum vadc_scale_fn_type scaletype,
      const struct vadc_prescale_ratio *prescale,
      const struct adc5_data *data,
      u16 adc_code, int *result)
{
 if (!(scaletype >= SCALE_HW_CALIB_DEFAULT &&
  scaletype < SCALE_HW_CALIB_INVALID)) {
  pr_err("Invalid scale type %d\n", scaletype);
  return -EINVAL;
 }

 return scale_adc5_fn[scaletype].scale_fn(prescale, data,
     adc_code, result);
}
