
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * funcs; struct dc_context* ctx; } ;
struct dce_transform {int lb_pixel_depth_supported; int prescaler_on; int lb_memory_size; int lb_bits_per_entry; TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int LB_BITS_PER_ENTRY ;
 int LB_PIXEL_DEPTH_18BPP ;
 int LB_PIXEL_DEPTH_24BPP ;
 int LB_PIXEL_DEPTH_30BPP ;
 int LB_TOTAL_NUMBER_OF_ENTRIES ;
 int dce110_xfmv_funcs ;

bool dce110_transform_v_construct(
 struct dce_transform *xfm_dce,
 struct dc_context *ctx)
{
 xfm_dce->base.ctx = ctx;

 xfm_dce->base.funcs = &dce110_xfmv_funcs;

 xfm_dce->lb_pixel_depth_supported =
   LB_PIXEL_DEPTH_18BPP |
   LB_PIXEL_DEPTH_24BPP |
   LB_PIXEL_DEPTH_30BPP;

 xfm_dce->prescaler_on = 1;
 xfm_dce->lb_bits_per_entry = LB_BITS_PER_ENTRY;
 xfm_dce->lb_memory_size = LB_TOTAL_NUMBER_OF_ENTRIES;

 return 1;
}
