
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu_funcs {int dummy; } ;
struct dc_context {int dummy; } ;
struct clk_mgr_internal {int * funcs; } ;


 int rv1_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*) ;
 int rv2_clk_internal_funcs ;

void rv2_clk_mgr_construct(struct dc_context *ctx, struct clk_mgr_internal *clk_mgr, struct pp_smu_funcs *pp_smu)

{
 rv1_clk_mgr_construct(ctx, clk_mgr, pp_smu);

 clk_mgr->funcs = &rv2_clk_internal_funcs;
}
