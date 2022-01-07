
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
typedef enum PP_StateUILabel { ____Placeholder_PP_StateUILabel } PP_StateUILabel ;





 int PP_StateUILabel_Balanced ;
 int PP_StateUILabel_Battery ;
 int PP_StateUILabel_None ;
 int PP_StateUILabel_Performance ;

__attribute__((used)) static enum PP_StateUILabel power_state_convert(enum amd_pm_state_type state)
{
 switch (state) {
 case 129:
  return PP_StateUILabel_Battery;
 case 130:
  return PP_StateUILabel_Balanced;
 case 128:
  return PP_StateUILabel_Performance;
 default:
  return PP_StateUILabel_None;
 }
}
