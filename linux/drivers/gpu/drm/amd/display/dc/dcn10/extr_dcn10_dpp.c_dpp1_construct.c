
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dcn_dpp_shift {int dummy; } ;
struct dcn_dpp_registers {int dummy; } ;
struct dcn_dpp_mask {int dummy; } ;
struct TYPE_2__ {int * caps; int * funcs; int inst; struct dc_context* ctx; } ;
struct dcn10_dpp {int lb_pixel_depth_supported; int lb_memory_size; int lb_bits_per_entry; struct dcn_dpp_mask const* tf_mask; struct dcn_dpp_shift const* tf_shift; struct dcn_dpp_registers const* tf_regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int LB_BITS_PER_ENTRY ;
 int LB_PIXEL_DEPTH_18BPP ;
 int LB_PIXEL_DEPTH_24BPP ;
 int LB_PIXEL_DEPTH_30BPP ;
 int LB_TOTAL_NUMBER_OF_ENTRIES ;
 int dcn10_dpp_cap ;
 int dcn10_dpp_funcs ;

void dpp1_construct(
 struct dcn10_dpp *dpp,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dcn_dpp_registers *tf_regs,
 const struct dcn_dpp_shift *tf_shift,
 const struct dcn_dpp_mask *tf_mask)
{
 dpp->base.ctx = ctx;

 dpp->base.inst = inst;
 dpp->base.funcs = &dcn10_dpp_funcs;
 dpp->base.caps = &dcn10_dpp_cap;

 dpp->tf_regs = tf_regs;
 dpp->tf_shift = tf_shift;
 dpp->tf_mask = tf_mask;

 dpp->lb_pixel_depth_supported =
  LB_PIXEL_DEPTH_18BPP |
  LB_PIXEL_DEPTH_24BPP |
  LB_PIXEL_DEPTH_30BPP;

 dpp->lb_bits_per_entry = LB_BITS_PER_ENTRY;
 dpp->lb_memory_size = LB_TOTAL_NUMBER_OF_ENTRIES;
}
