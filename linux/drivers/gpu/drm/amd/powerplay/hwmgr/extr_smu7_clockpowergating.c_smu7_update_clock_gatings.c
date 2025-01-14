
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int feature_mask; } ;
typedef int PPSMC_Msg ;


 int CG_CPF_MGCG_MASK ;
 int CG_GFX_3DCG_MASK ;
 int CG_GFX_3DLS_MASK ;
 int CG_GFX_CGCG_MASK ;
 int CG_GFX_CGLS_MASK ;
 int CG_GFX_CP_LS_MASK ;
 int CG_GFX_OTHERS_MGCG_MASK ;
 int CG_GFX_RLC_LS_MASK ;
 int CG_RLC_MGCG_MASK ;
 int CG_SYS_BIF_MGCG_MASK ;
 int CG_SYS_BIF_MGLS_MASK ;
 int CG_SYS_DRM_MGCG_MASK ;
 int CG_SYS_DRM_MGLS_MASK ;
 int CG_SYS_HDP_MGCG_MASK ;
 int CG_SYS_HDP_MGLS_MASK ;
 int CG_SYS_MC_MGCG_MASK ;
 int CG_SYS_MC_MGLS_MASK ;
 int CG_SYS_ROM_MASK ;
 int CG_SYS_SDMA_MGCG_MASK ;
 int CG_SYS_SDMA_MGLS_MASK ;
 int EINVAL ;
 int PPSMC_MSG_DisableClockGatingFeature ;
 int PPSMC_MSG_EnableClockGatingFeature ;





 int const PP_BLOCK_MASK ;
 int const PP_BLOCK_SHIFT ;






 int PP_ENABLE_GFX_CG_THRU_SMU ;

 int const PP_GROUP_MASK ;
 int const PP_GROUP_SHIFT ;

 int const PP_STATE_CG ;
 int const PP_STATE_LS ;
 int const PP_STATE_MASK ;
 int const PP_STATE_SUPPORT_CG ;
 int const PP_STATE_SUPPORT_LS ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

int smu7_update_clock_gatings(struct pp_hwmgr *hwmgr,
     const uint32_t *msg_id)
{
 PPSMC_Msg msg;
 uint32_t value;

 if (!(hwmgr->feature_mask & PP_ENABLE_GFX_CG_THRU_SMU))
  return 0;

 switch ((*msg_id & PP_GROUP_MASK) >> PP_GROUP_SHIFT) {
 case 129:
  switch ((*msg_id & PP_BLOCK_MASK) >> PP_BLOCK_SHIFT) {
  case 139:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_CGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS
     ? PPSMC_MSG_EnableClockGatingFeature
     : PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_CGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 140:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_3DCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }

   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_3DLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 136:
   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_RLC_LS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 138:
   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_GFX_CP_LS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 137:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = (CG_CPF_MGCG_MASK | CG_RLC_MGCG_MASK |
      CG_GFX_OTHERS_MGCG_MASK);

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  default:
   return -EINVAL;
  }
  break;

 case 128:
  switch ((*msg_id & PP_BLOCK_MASK) >> PP_BLOCK_SHIFT) {
  case 135:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_CG ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_BIF_MGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_BIF_MGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 132:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_MC_MGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }

   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_MC_MGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 134:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_CG ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_DRM_MGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_DRM_MGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 133:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_HDP_MGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }

   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_HDP_MGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 130:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_SDMA_MGCG_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }

   if (PP_STATE_SUPPORT_LS & *msg_id) {
    msg = (*msg_id & PP_STATE_MASK) & PP_STATE_LS ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_SDMA_MGLS_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  case 131:
   if (PP_STATE_SUPPORT_CG & *msg_id) {
    msg = ((*msg_id & PP_STATE_MASK) & PP_STATE_CG) ?
      PPSMC_MSG_EnableClockGatingFeature :
      PPSMC_MSG_DisableClockGatingFeature;
    value = CG_SYS_ROM_MASK;

    if (smum_send_msg_to_smc_with_parameter(
      hwmgr, msg, value))
     return -EINVAL;
   }
   break;

  default:
   return -EINVAL;

  }
  break;

 default:
  return -EINVAL;

 }

 return 0;
}
