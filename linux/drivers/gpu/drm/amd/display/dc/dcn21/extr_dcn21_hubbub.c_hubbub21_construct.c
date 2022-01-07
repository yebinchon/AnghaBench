
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dcn_hubbub_shift {int dummy; } ;
struct dcn_hubbub_registers {int dummy; } ;
struct dcn_hubbub_mask {int dummy; } ;
struct TYPE_2__ {int * funcs; struct dc_context* ctx; } ;
struct dcn20_hubbub {int debug_test_index_pstate; struct dcn_hubbub_mask const* masks; struct dcn_hubbub_shift const* shifts; struct dcn_hubbub_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int hubbub21_funcs ;

void hubbub21_construct(struct dcn20_hubbub *hubbub,
 struct dc_context *ctx,
 const struct dcn_hubbub_registers *hubbub_regs,
 const struct dcn_hubbub_shift *hubbub_shift,
 const struct dcn_hubbub_mask *hubbub_mask)
{
 hubbub->base.ctx = ctx;

 hubbub->base.funcs = &hubbub21_funcs;

 hubbub->regs = hubbub_regs;
 hubbub->shifts = hubbub_shift;
 hubbub->masks = hubbub_mask;

 hubbub->debug_test_index_pstate = 0xB;
}
