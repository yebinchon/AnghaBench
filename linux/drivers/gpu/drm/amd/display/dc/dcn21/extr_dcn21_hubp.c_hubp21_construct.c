
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
struct dcn21_hubp {TYPE_1__ base; struct dcn_hubp2_mask const* hubp_mask; struct dcn_hubp2_shift const* hubp_shift; struct dcn_hubp2_registers const* hubp_regs; } ;
struct dc_context {int dummy; } ;


 int OPP_ID_INVALID ;
 int dcn21_hubp_funcs ;

bool hubp21_construct(
 struct dcn21_hubp *hubp21,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dcn_hubp2_registers *hubp_regs,
 const struct dcn_hubp2_shift *hubp_shift,
 const struct dcn_hubp2_mask *hubp_mask)
{
 hubp21->base.funcs = &dcn21_hubp_funcs;
 hubp21->base.ctx = ctx;
 hubp21->hubp_regs = hubp_regs;
 hubp21->hubp_shift = hubp_shift;
 hubp21->hubp_mask = hubp_mask;
 hubp21->base.inst = inst;
 hubp21->base.opp_id = OPP_ID_INVALID;
 hubp21->base.mpcc_id = 0xf;

 return 1;
}
