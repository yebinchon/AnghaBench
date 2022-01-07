
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dce_transform_shift {int dummy; } ;
struct dce_transform_registers {int dummy; } ;
struct dce_transform_mask {int dummy; } ;
struct TYPE_2__ {int * funcs; int inst; struct dc_context* ctx; } ;
struct dce_transform {int prescaler_on; int lb_pixel_depth_supported; int lb_memory_size; int lb_bits_per_entry; struct dce_transform_mask const* xfm_mask; struct dce_transform_shift const* xfm_shift; struct dce_transform_registers const* regs; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int LB_BITS_PER_ENTRY ;
 int LB_PIXEL_DEPTH_18BPP ;
 int LB_PIXEL_DEPTH_24BPP ;
 int LB_PIXEL_DEPTH_30BPP ;
 int LB_TOTAL_NUMBER_OF_ENTRIES ;
 int dce_transform_funcs ;

void dce_transform_construct(
 struct dce_transform *xfm_dce,
 struct dc_context *ctx,
 uint32_t inst,
 const struct dce_transform_registers *regs,
 const struct dce_transform_shift *xfm_shift,
 const struct dce_transform_mask *xfm_mask)
{
 xfm_dce->base.ctx = ctx;

 xfm_dce->base.inst = inst;
 xfm_dce->base.funcs = &dce_transform_funcs;

 xfm_dce->regs = regs;
 xfm_dce->xfm_shift = xfm_shift;
 xfm_dce->xfm_mask = xfm_mask;

 xfm_dce->prescaler_on = 1;
 xfm_dce->lb_pixel_depth_supported =
   LB_PIXEL_DEPTH_18BPP |
   LB_PIXEL_DEPTH_24BPP |
   LB_PIXEL_DEPTH_30BPP;

 xfm_dce->lb_bits_per_entry = LB_BITS_PER_ENTRY;
 xfm_dce->lb_memory_size = LB_TOTAL_NUMBER_OF_ENTRIES;
}
