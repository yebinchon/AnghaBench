
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vadc_prescale_ratio {int dummy; } ;
struct adc5_data {int dummy; } ;


 int PMIC5_SMB_TEMP_CONSTANT ;
 int PMIC5_SMB_TEMP_SCALE_FACTOR ;
 int qcom_vadc_scale_code_voltage_factor (int,struct vadc_prescale_ratio const*,struct adc5_data const*,int ) ;

__attribute__((used)) static int qcom_vadc_scale_hw_smb_temp(
    const struct vadc_prescale_ratio *prescale,
    const struct adc5_data *data,
    u16 adc_code, int *result_mdec)
{
 *result_mdec = qcom_vadc_scale_code_voltage_factor(adc_code * 100,
    prescale, data, PMIC5_SMB_TEMP_SCALE_FACTOR);
 *result_mdec = PMIC5_SMB_TEMP_CONSTANT - *result_mdec;

 return 0;
}
