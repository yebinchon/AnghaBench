
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {unsigned int* shadow_coeffs; } ;
typedef enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;
typedef enum isl29501_correction_coeff { ____Placeholder_isl29501_correction_coeff } isl29501_correction_coeff ;


 int COEFF_LIGHT_A ;
 int COEFF_LIGHT_B ;
 int COEFF_TEMP_A ;
 int COEFF_TEMP_B ;
 int EINVAL ;





__attribute__((used)) static int isl29501_set_shadow_coeff(struct isl29501_private *isl29501,
         enum isl29501_register_name reg,
         unsigned int val)
{
 enum isl29501_correction_coeff coeff;

 switch (reg) {
 case 129:
  coeff = COEFF_TEMP_A;
  break;
 case 128:
  coeff = COEFF_TEMP_B;
  break;
 case 131:
  coeff = COEFF_LIGHT_A;
  break;
 case 130:
  coeff = COEFF_LIGHT_B;
  break;
 default:
  return -EINVAL;
 }
 isl29501->shadow_coeffs[coeff] = val;

 return 0;
}
