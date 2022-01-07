
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ver; } ;
struct pp_smu_funcs {TYPE_1__ ctx; } ;
struct dc_context {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ PP_SMU_VER_NV ;
 int dm_pp_get_funcs (struct dc_context*,struct pp_smu_funcs*) ;
 struct pp_smu_funcs* kzalloc (int,int ) ;
 struct pp_smu_funcs* memset (struct pp_smu_funcs*,int ,int) ;

struct pp_smu_funcs *dcn20_pp_smu_create(struct dc_context *ctx)
{
 struct pp_smu_funcs *pp_smu = kzalloc(sizeof(*pp_smu), GFP_KERNEL);

 if (!pp_smu)
  return pp_smu;

 dm_pp_get_funcs(ctx, pp_smu);

 if (pp_smu->ctx.ver != PP_SMU_VER_NV)
  pp_smu = memset(pp_smu, 0, sizeof(struct pp_smu_funcs));

 return pp_smu;
}
