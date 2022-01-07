
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm_pp_clocks_state { ____Placeholder_dm_pp_clocks_state } dm_pp_clocks_state ;
typedef enum PP_DAL_POWERLEVEL { ____Placeholder_PP_DAL_POWERLEVEL } PP_DAL_POWERLEVEL ;


 int DM_PP_CLOCKS_DPM_STATE_LEVEL_0 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_1 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_2 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_3 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_4 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_5 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_6 ;
 int DM_PP_CLOCKS_DPM_STATE_LEVEL_7 ;
 int DM_PP_CLOCKS_STATE_INVALID ;
 int DRM_ERROR (char*,int) ;
__attribute__((used)) static enum dm_pp_clocks_state pp_to_dc_powerlevel_state(
   enum PP_DAL_POWERLEVEL max_clocks_state)
{
 switch (max_clocks_state) {
 case 135:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_0;
 case 134:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_1;
 case 133:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_2;
 case 132:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_3;
 case 131:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_4;
 case 130:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_5;
 case 129:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_6;
 case 128:
  return DM_PP_CLOCKS_DPM_STATE_LEVEL_7;
 default:
  DRM_ERROR("DM_PPLIB: invalid powerlevel state: %d!\n",
    max_clocks_state);
  return DM_PP_CLOCKS_STATE_INVALID;
 }
}
