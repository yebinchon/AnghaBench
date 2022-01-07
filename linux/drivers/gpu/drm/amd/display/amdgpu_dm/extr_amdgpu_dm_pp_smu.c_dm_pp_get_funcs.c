
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {struct dc_context* dm; } ;
struct TYPE_10__ {int set_pstate_handshake_support; int get_uclk_dpm_states; int get_maximum_sustainable_clocks; int set_hard_min_uclk_by_freq; int * set_pme_wa_enable; int set_wm_ranges; int set_voltage_by_freq; int set_min_deep_sleep_dcfclk; int set_hard_min_dcfclk_by_freq; int set_display_count; TYPE_4__ pp_smu; } ;
struct TYPE_8__ {int ver; } ;
struct TYPE_6__ {struct dc_context* dm; } ;
struct TYPE_7__ {int set_hard_min_fclk_by_freq; int set_hard_min_dcfclk_by_freq; int set_min_deep_sleep_dcfclk; int set_display_count; int set_pme_wa_enable; int set_wm_ranges; TYPE_1__ pp_smu; } ;
struct pp_smu_funcs {TYPE_5__ nv_funcs; TYPE_3__ ctx; TYPE_2__ rv_funcs; } ;
struct dc_context {int dce_version; } ;





 int DRM_ERROR (char*) ;
 int PP_SMU_VER_NV ;
 int PP_SMU_VER_RV ;
 int pp_nv_get_maximum_sustainable_clocks ;
 int pp_nv_get_uclk_dpm_states ;
 int pp_nv_set_display_count ;
 int pp_nv_set_hard_min_dcefclk_by_freq ;
 int pp_nv_set_hard_min_uclk_by_freq ;
 int pp_nv_set_min_deep_sleep_dcfclk ;
 int pp_nv_set_pstate_handshake_support ;
 int pp_nv_set_voltage_by_freq ;
 int pp_nv_set_wm_ranges ;
 int pp_rv_set_active_display_count ;
 int pp_rv_set_hard_min_dcefclk_by_freq ;
 int pp_rv_set_hard_min_fclk_by_freq ;
 int pp_rv_set_min_deep_sleep_dcfclk ;
 int pp_rv_set_pme_wa_enable ;
 int pp_rv_set_wm_ranges ;

void dm_pp_get_funcs(
  struct dc_context *ctx,
  struct pp_smu_funcs *funcs)
{
 switch (ctx->dce_version) {
 case 130:
 case 129:
  funcs->ctx.ver = PP_SMU_VER_RV;
  funcs->rv_funcs.pp_smu.dm = ctx;
  funcs->rv_funcs.set_wm_ranges = pp_rv_set_wm_ranges;
  funcs->rv_funcs.set_pme_wa_enable = pp_rv_set_pme_wa_enable;
  funcs->rv_funcs.set_display_count =
    pp_rv_set_active_display_count;
  funcs->rv_funcs.set_min_deep_sleep_dcfclk =
    pp_rv_set_min_deep_sleep_dcfclk;
  funcs->rv_funcs.set_hard_min_dcfclk_by_freq =
    pp_rv_set_hard_min_dcefclk_by_freq;
  funcs->rv_funcs.set_hard_min_fclk_by_freq =
    pp_rv_set_hard_min_fclk_by_freq;
  break;
 default:
  DRM_ERROR("smu version is not supported !\n");
  break;
 }
}
