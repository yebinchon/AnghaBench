
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;
typedef enum isl29501_register_name { ____Placeholder_isl29501_register_name } isl29501_register_name ;
typedef enum isl29501_correction_coeff { ____Placeholder_isl29501_correction_coeff } isl29501_correction_coeff ;






 int EINVAL ;
 int REG_CALIB_PHASE_LIGHT_A ;
 int REG_CALIB_PHASE_LIGHT_B ;
 int REG_CALIB_PHASE_TEMP_A ;
 int REG_CALIB_PHASE_TEMP_B ;
 int isl29501_register_write (struct isl29501_private*,int,int) ;

__attribute__((used)) static int isl29501_write_coeff(struct isl29501_private *isl29501,
    enum isl29501_correction_coeff coeff,
    int val)
{
 enum isl29501_register_name reg;

 switch (coeff) {
 case 129:
  reg = REG_CALIB_PHASE_TEMP_A;
  break;
 case 128:
  reg = REG_CALIB_PHASE_TEMP_B;
  break;
 case 131:
  reg = REG_CALIB_PHASE_LIGHT_A;
  break;
 case 130:
  reg = REG_CALIB_PHASE_LIGHT_B;
  break;
 default:
  return -EINVAL;
 }

 return isl29501_register_write(isl29501, reg, val);
}
