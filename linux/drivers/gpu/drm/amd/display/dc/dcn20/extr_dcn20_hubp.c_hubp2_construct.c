
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dcn_hubp2_shift {int dummy; } ;
struct dcn_hubp2_registers {int dummy; } ;
struct dcn_hubp2_mask {int dummy; } ;
struct TYPE_2__ {int mpcc_id; int opp_id; int inst; struct dc_context* ctx; int * funcs; } ;
struct dcn20_hubp {TYPE_1__ base; struct dcn_hubp2_mask const* hubp_mask; struct dcn_hubp2_shift const* hubp_shift; struct dcn_hubp2_registers const* hubp_regs; } ;
struct dc_context {int dummy; } ;


 int OPP_ID_INVALID ;
 int dcn20_hubp_funcs ;

bool hubp2_construct(
 struct dcn20_hubp *hubp2,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dcn_hubp2_registers *hubp_regs,
 const struct dcn_hubp2_shift *hubp_shift,
 const struct dcn_hubp2_mask *hubp_mask)
{
 hubp2->base.funcs = &dcn20_hubp_funcs;
 hubp2->base.ctx = ctx;
 hubp2->hubp_regs = hubp_regs;
 hubp2->hubp_shift = hubp_shift;
 hubp2->hubp_mask = hubp_mask;
 hubp2->base.inst = inst;
 hubp2->base.opp_id = OPP_ID_INVALID;
 hubp2->base.mpcc_id = 0xf;

 return 1;
}
