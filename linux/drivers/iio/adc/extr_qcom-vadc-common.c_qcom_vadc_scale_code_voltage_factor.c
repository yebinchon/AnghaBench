
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vadc_prescale_ratio {int den; unsigned int num; } ;
struct adc5_data {int full_scale_code_volt; } ;
typedef int s64 ;


 scalar_t__ VADC5_MAX_CODE ;
 int div64_s64 (int,int) ;

__attribute__((used)) static int qcom_vadc_scale_code_voltage_factor(u16 adc_code,
    const struct vadc_prescale_ratio *prescale,
    const struct adc5_data *data,
    unsigned int factor)
{
 s64 voltage, temp, adc_vdd_ref_mv = 1875;







 if (adc_code > VADC5_MAX_CODE)
  adc_code = 0;


 voltage = (s64) adc_code * adc_vdd_ref_mv * 1000;
 voltage = div64_s64(voltage, data->full_scale_code_volt);
 if (voltage > 0) {
  voltage *= prescale->den;
  temp = prescale->num * factor;
  voltage = div64_s64(voltage, temp);
 } else {
  voltage = 0;
 }

 return (int) voltage;
}
