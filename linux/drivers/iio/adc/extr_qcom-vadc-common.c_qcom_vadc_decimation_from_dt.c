
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EINVAL ;
 int VADC_DECIMATION_MAX ;
 int VADC_DECIMATION_MIN ;
 int __ffs64 (int) ;
 int is_power_of_2 (int) ;

int qcom_vadc_decimation_from_dt(u32 value)
{
 if (!is_power_of_2(value) || value < VADC_DECIMATION_MIN ||
     value > VADC_DECIMATION_MAX)
  return -EINVAL;

 return __ffs64(value / VADC_DECIMATION_MIN);
}
