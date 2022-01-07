
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int set_wm_ranges; int get_dpm_clock_table; } ;
struct TYPE_3__ {int ver; } ;
struct pp_smu_funcs {TYPE_2__ rn_funcs; TYPE_1__ ctx; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 int PP_SMU_VER_RN ;
 int dummy_get_dpm_clock_table ;
 int dummy_set_wm_ranges ;
 struct pp_smu_funcs* kzalloc (int,int ) ;

struct pp_smu_funcs *dcn21_pp_smu_create(struct dc_context *ctx)
{
 struct pp_smu_funcs *pp_smu = kzalloc(sizeof(*pp_smu), GFP_KERNEL);

 pp_smu->ctx.ver = PP_SMU_VER_RN;

 pp_smu->rn_funcs.get_dpm_clock_table = dummy_get_dpm_clock_table;
 pp_smu->rn_funcs.set_wm_ranges = dummy_set_wm_ranges;

 return pp_smu;
}
