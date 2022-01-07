
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_smu_funcs {int dummy; } ;
struct hw_asic_id {int chip_family; int hw_internal_rev; } ;
struct dccg {int dummy; } ;
struct dc_context {struct hw_asic_id asic_id; } ;
struct clk_mgr {int dummy; } ;
struct clk_mgr_internal {struct clk_mgr base; } ;


 int ASICREV_IS_PICASSO (int ) ;
 int ASICREV_IS_RAVEN (int ) ;
 int ASICREV_IS_RAVEN2 (int ) ;
 int ASICREV_IS_RENOIR (int ) ;
 int ASICREV_IS_VEGA20_P (int ) ;
 int ASIC_REV_IS_FIJI_P (int ) ;
 int ASIC_REV_IS_POLARIS10_P (int ) ;
 int ASIC_REV_IS_POLARIS11_M (int ) ;
 int ASIC_REV_IS_POLARIS12_V (int ) ;
 int ASIC_REV_IS_TONGA_P (int ) ;
 int ASIC_REV_IS_VEGAM (int ) ;
 int ASSERT (int ) ;
 int BREAK_TO_DEBUGGER () ;







 int GFP_KERNEL ;
 int dce110_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dce112_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dce120_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dce121_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dce_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*) ;
 int dcn20_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*,struct dccg*) ;
 struct clk_mgr_internal* kzalloc (int,int ) ;
 int rn_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*,struct dccg*) ;
 int rv1_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*) ;
 int rv2_clk_mgr_construct (struct dc_context*,struct clk_mgr_internal*,struct pp_smu_funcs*) ;

struct clk_mgr *dc_clk_mgr_create(struct dc_context *ctx, struct pp_smu_funcs *pp_smu, struct dccg *dccg)
{
 struct hw_asic_id asic_id = ctx->asic_id;

 struct clk_mgr_internal *clk_mgr = kzalloc(sizeof(*clk_mgr), GFP_KERNEL);

 if (clk_mgr == ((void*)0)) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }

 switch (asic_id.chip_family) {
 case 133:
 case 131:
  dce_clk_mgr_construct(ctx, clk_mgr);
  break;
 case 132:
  dce110_clk_mgr_construct(ctx, clk_mgr);
  break;
 case 128:
  if (ASIC_REV_IS_TONGA_P(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_FIJI_P(asic_id.hw_internal_rev)) {
   dce_clk_mgr_construct(ctx, clk_mgr);
   break;
  }
  if (ASIC_REV_IS_POLARIS10_P(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_POLARIS11_M(asic_id.hw_internal_rev) ||
    ASIC_REV_IS_POLARIS12_V(asic_id.hw_internal_rev)) {
   dce112_clk_mgr_construct(ctx, clk_mgr);
   break;
  }
  if (ASIC_REV_IS_VEGAM(asic_id.hw_internal_rev)) {
   dce112_clk_mgr_construct(ctx, clk_mgr);
   break;
  }
  break;
 case 134:
  if (ASICREV_IS_VEGA20_P(asic_id.hw_internal_rev))
   dce121_clk_mgr_construct(ctx, clk_mgr);
  else
   dce120_clk_mgr_construct(ctx, clk_mgr);
  break;
 default:
  ASSERT(0);
  break;
 }

 return &clk_mgr->base;
}
