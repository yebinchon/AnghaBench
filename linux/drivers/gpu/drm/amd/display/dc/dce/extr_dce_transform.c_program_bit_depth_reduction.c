
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dce_transform {int dummy; } ;
struct TYPE_2__ {int SPATIAL_DITHER_ENABLED; int TRUNCATE_DEPTH; int HIGHPASS_RANDOM; int RGB_RANDOM; int FRAME_RANDOM; scalar_t__ TRUNCATE_MODE; scalar_t__ TRUNCATE_ENABLED; } ;
struct bit_depth_reduction_params {TYPE_1__ flags; } ;
typedef enum dcp_out_trunc_round_mode { ____Placeholder_dcp_out_trunc_round_mode } dcp_out_trunc_round_mode ;
typedef enum dcp_out_trunc_round_depth { ____Placeholder_dcp_out_trunc_round_depth } dcp_out_trunc_round_depth ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;


 int ASSERT (int) ;
 int BREAK_TO_DEBUGGER () ;
 int COLOR_DEPTH_121212 ;
 int DCP_OUT_TRUNC_ROUND_DEPTH_10BIT ;
 int DCP_OUT_TRUNC_ROUND_DEPTH_12BIT ;
 int DCP_OUT_TRUNC_ROUND_DEPTH_8BIT ;
 int DCP_OUT_TRUNC_ROUND_MODE_ROUND ;
 int DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE ;
 int DCP_SPATIAL_DITHER_DEPTH_30BPP ;
 int DCP_SPATIAL_DITHER_MODE_A_AA_A ;
 int set_clamp (struct dce_transform*,int) ;
 int set_dither (struct dce_transform*,int,int ,int ,int ,int ,int ) ;
 int set_round (struct dce_transform*,int,int) ;

__attribute__((used)) static void program_bit_depth_reduction(
 struct dce_transform *xfm_dce,
 enum dc_color_depth depth,
 const struct bit_depth_reduction_params *bit_depth_params)
{
 enum dcp_out_trunc_round_depth trunc_round_depth;
 enum dcp_out_trunc_round_mode trunc_mode;
 bool spatial_dither_enable;

 ASSERT(depth < COLOR_DEPTH_121212);

 spatial_dither_enable = bit_depth_params->flags.SPATIAL_DITHER_ENABLED;

 trunc_round_depth = DCP_OUT_TRUNC_ROUND_DEPTH_12BIT;
 trunc_mode = DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE;

 if (bit_depth_params->flags.TRUNCATE_ENABLED) {

  spatial_dither_enable = 0;
  trunc_mode = bit_depth_params->flags.TRUNCATE_MODE ?
        DCP_OUT_TRUNC_ROUND_MODE_ROUND :
        DCP_OUT_TRUNC_ROUND_MODE_TRUNCATE;

  if (bit_depth_params->flags.TRUNCATE_DEPTH == 0 ||
      bit_depth_params->flags.TRUNCATE_DEPTH == 1)
   trunc_round_depth = DCP_OUT_TRUNC_ROUND_DEPTH_8BIT;
  else if (bit_depth_params->flags.TRUNCATE_DEPTH == 2)
   trunc_round_depth = DCP_OUT_TRUNC_ROUND_DEPTH_10BIT;
  else {




   trunc_round_depth = DCP_OUT_TRUNC_ROUND_DEPTH_12BIT;
   BREAK_TO_DEBUGGER();
  }
 }

 set_clamp(xfm_dce, depth);
 set_round(xfm_dce, trunc_mode, trunc_round_depth);
 set_dither(xfm_dce,
     spatial_dither_enable,
     DCP_SPATIAL_DITHER_MODE_A_AA_A,
     DCP_SPATIAL_DITHER_DEPTH_30BPP,
     bit_depth_params->flags.FRAME_RANDOM,
     bit_depth_params->flags.RGB_RANDOM,
     bit_depth_params->flags.HIGHPASS_RANDOM);
}
