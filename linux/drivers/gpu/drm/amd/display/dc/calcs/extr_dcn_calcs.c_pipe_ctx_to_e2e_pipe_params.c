
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_68__ TYPE_9__ ;
typedef struct TYPE_67__ TYPE_8__ ;
typedef struct TYPE_66__ TYPE_7__ ;
typedef struct TYPE_65__ TYPE_6__ ;
typedef struct TYPE_64__ TYPE_5__ ;
typedef struct TYPE_63__ TYPE_4__ ;
typedef struct TYPE_62__ TYPE_3__ ;
typedef struct TYPE_61__ TYPE_34__ ;
typedef struct TYPE_60__ TYPE_33__ ;
typedef struct TYPE_59__ TYPE_32__ ;
typedef struct TYPE_58__ TYPE_31__ ;
typedef struct TYPE_57__ TYPE_30__ ;
typedef struct TYPE_56__ TYPE_2__ ;
typedef struct TYPE_55__ TYPE_29__ ;
typedef struct TYPE_54__ TYPE_28__ ;
typedef struct TYPE_53__ TYPE_27__ ;
typedef struct TYPE_52__ TYPE_26__ ;
typedef struct TYPE_51__ TYPE_25__ ;
typedef struct TYPE_50__ TYPE_24__ ;
typedef struct TYPE_49__ TYPE_23__ ;
typedef struct TYPE_48__ TYPE_22__ ;
typedef struct TYPE_47__ TYPE_21__ ;
typedef struct TYPE_46__ TYPE_20__ ;
typedef struct TYPE_45__ TYPE_1__ ;
typedef struct TYPE_44__ TYPE_19__ ;
typedef struct TYPE_43__ TYPE_18__ ;
typedef struct TYPE_42__ TYPE_17__ ;
typedef struct TYPE_41__ TYPE_16__ ;
typedef struct TYPE_40__ TYPE_15__ ;
typedef struct TYPE_39__ TYPE_14__ ;
typedef struct TYPE_38__ TYPE_13__ ;
typedef struct TYPE_37__ TYPE_12__ ;
typedef struct TYPE_36__ TYPE_11__ ;
typedef struct TYPE_35__ TYPE_10__ ;


struct TYPE_61__ {int vupdate_width; int vupdate_offset; int vstartup_start; } ;
struct TYPE_54__ {int height; int width; } ;
struct TYPE_52__ {int depth; } ;
struct TYPE_50__ {double value; } ;
struct TYPE_43__ {double value; } ;
struct TYPE_51__ {TYPE_24__ v_c; TYPE_18__ v; } ;
struct TYPE_48__ {double value; } ;
struct TYPE_47__ {double value; } ;
struct TYPE_42__ {double value; } ;
struct TYPE_41__ {double value; } ;
struct TYPE_49__ {TYPE_22__ vert_c; TYPE_21__ horz_c; TYPE_17__ vert; TYPE_16__ horz; } ;
struct TYPE_46__ {int h_taps_c; int v_taps_c; int v_taps; int h_taps; } ;
struct TYPE_36__ {int width; int height; } ;
struct TYPE_55__ {TYPE_28__ recout; TYPE_26__ lb_params; TYPE_25__ inits; TYPE_23__ ratios; TYPE_20__ taps; TYPE_11__ viewport; } ;
struct TYPE_57__ {TYPE_29__ scl_data; TYPE_9__* dpp; } ;
struct pipe_ctx {TYPE_34__ pipe_dlg_param; TYPE_32__* stream; TYPE_30__ plane_res; TYPE_14__* plane_state; TYPE_2__* bottom_pipe; TYPE_1__* top_pipe; } ;
struct TYPE_60__ {double pixel_rate_mhz; int vupdate_width; int vupdate_offset; int vstartup_start; scalar_t__ vblank_start; scalar_t__ vblank_end; scalar_t__ vtotal; scalar_t__ hblank_start; scalar_t__ hblank_end; scalar_t__ htotal; int full_recout_height; int full_recout_width; int recout_height; int recout_width; scalar_t__ vactive; } ;
struct TYPE_53__ {double hscl_ratio; double vscl_ratio; double vinit; double hscl_ratio_c; double vscl_ratio_c; double vinit_c; int lb_depth; } ;
struct TYPE_44__ {int htaps_c; int vtaps_c; int vtaps; int htaps; } ;
struct TYPE_40__ {int is_hsplit; int dcc; int dcc_rate; int viewport_width; int viewport_height; int data_pitch; int data_pitch_c; int cur0_src_width; int cur0_bpp; int viewport_width_c; int viewport_height_c; int source_format; void* source_scan; int macro_tile_size; int sw_mode; int meta_pitch; } ;
struct _vcs_dpi_display_pipe_params_st {TYPE_33__ dest; TYPE_27__ scale_ratio_depth; TYPE_19__ scale_taps; TYPE_15__ src; } ;
struct TYPE_68__ {TYPE_8__* ctx; } ;
struct TYPE_67__ {TYPE_7__* dc; } ;
struct TYPE_62__ {scalar_t__ optimized_watermark; } ;
struct TYPE_66__ {TYPE_6__* res_pool; TYPE_3__ debug; } ;
struct TYPE_65__ {TYPE_5__* hubbub; } ;
struct TYPE_64__ {TYPE_4__* funcs; } ;
struct TYPE_63__ {scalar_t__ (* dcc_support_pixel_format ) (int,unsigned int*) ;} ;
struct TYPE_58__ {double pix_clk_100hz; scalar_t__ v_border_top; scalar_t__ v_border_bottom; scalar_t__ v_addressable; scalar_t__ v_front_porch; scalar_t__ v_total; scalar_t__ h_border_right; scalar_t__ h_border_left; scalar_t__ h_addressable; scalar_t__ h_front_porch; scalar_t__ h_total; } ;
struct TYPE_59__ {TYPE_31__ timing; } ;
struct TYPE_56__ {TYPE_14__* plane_state; } ;
struct TYPE_45__ {TYPE_14__* plane_state; } ;
struct TYPE_37__ {int swizzle; } ;
struct TYPE_38__ {TYPE_12__ gfx9; } ;
struct TYPE_35__ {int meta_pitch; scalar_t__ enable; } ;
struct TYPE_39__ {int format; int rotation; TYPE_13__ tiling_info; TYPE_10__ dcc; } ;


 int ASSERT (int ) ;
 int dm_420_10 ;
 int dm_420_8 ;
 int dm_444_32 ;
 int dm_444_64 ;
 void* dm_horz ;
 void* dm_vert ;
 scalar_t__ stub1 (int,unsigned int*) ;
 int swizzle_mode_to_macro_tile_size (int ) ;

__attribute__((used)) static void pipe_ctx_to_e2e_pipe_params (
  const struct pipe_ctx *pipe,
  struct _vcs_dpi_display_pipe_params_st *input)
{
 input->src.is_hsplit = 0;
 if (pipe->top_pipe != ((void*)0) && pipe->top_pipe->plane_state == pipe->plane_state)
  input->src.is_hsplit = 1;
 else if (pipe->bottom_pipe != ((void*)0) && pipe->bottom_pipe->plane_state == pipe->plane_state)
  input->src.is_hsplit = 1;

 if (pipe->plane_res.dpp->ctx->dc->debug.optimized_watermark) {




  input->src.dcc = pipe->plane_state->dcc.enable ? 1 : 0;
 } else {






  unsigned int bpe;

  input->src.dcc = pipe->plane_res.dpp->ctx->dc->res_pool->hubbub->funcs->
   dcc_support_pixel_format(pipe->plane_state->format, &bpe) ? 1 : 0;
 }
 input->src.dcc_rate = 1;
 input->src.meta_pitch = pipe->plane_state->dcc.meta_pitch;
 input->src.source_scan = dm_horz;
 input->src.sw_mode = pipe->plane_state->tiling_info.gfx9.swizzle;

 input->src.viewport_width = pipe->plane_res.scl_data.viewport.width;
 input->src.viewport_height = pipe->plane_res.scl_data.viewport.height;
 input->src.data_pitch = pipe->plane_res.scl_data.viewport.width;
 input->src.data_pitch_c = pipe->plane_res.scl_data.viewport.width;
 input->src.cur0_src_width = 128;
 input->src.cur0_bpp = 32;

 input->src.macro_tile_size = swizzle_mode_to_macro_tile_size(pipe->plane_state->tiling_info.gfx9.swizzle);

 switch (pipe->plane_state->rotation) {
 case 138:
 case 137:
  input->src.source_scan = dm_horz;
  break;
 case 135:
 case 136:
  input->src.source_scan = dm_vert;
  break;
 default:
  ASSERT(0);
  break;
 }


 switch (pipe->plane_state->format) {
 case 129:
 case 128:
  input->src.source_format = dm_420_8;
  input->src.viewport_width_c = input->src.viewport_width / 2;
  input->src.viewport_height_c = input->src.viewport_height / 2;
  break;
 case 131:
 case 130:
  input->src.source_format = dm_420_10;
  input->src.viewport_width_c = input->src.viewport_width / 2;
  input->src.viewport_height_c = input->src.viewport_height / 2;
  break;
 case 133:
 case 132:
 case 134:
  input->src.source_format = dm_444_64;
  input->src.viewport_width_c = input->src.viewport_width;
  input->src.viewport_height_c = input->src.viewport_height;
  break;
 default:
  input->src.source_format = dm_444_32;
  input->src.viewport_width_c = input->src.viewport_width;
  input->src.viewport_height_c = input->src.viewport_height;
  break;
 }

 input->scale_taps.htaps = pipe->plane_res.scl_data.taps.h_taps;
 input->scale_ratio_depth.hscl_ratio = pipe->plane_res.scl_data.ratios.horz.value/4294967296.0;
 input->scale_ratio_depth.vscl_ratio = pipe->plane_res.scl_data.ratios.vert.value/4294967296.0;
 input->scale_ratio_depth.vinit = pipe->plane_res.scl_data.inits.v.value/4294967296.0;
 if (input->scale_ratio_depth.vinit < 1.0)
   input->scale_ratio_depth.vinit = 1;
 input->scale_taps.vtaps = pipe->plane_res.scl_data.taps.v_taps;
 input->scale_taps.vtaps_c = pipe->plane_res.scl_data.taps.v_taps_c;
 input->scale_taps.htaps_c = pipe->plane_res.scl_data.taps.h_taps_c;
 input->scale_ratio_depth.hscl_ratio_c = pipe->plane_res.scl_data.ratios.horz_c.value/4294967296.0;
 input->scale_ratio_depth.vscl_ratio_c = pipe->plane_res.scl_data.ratios.vert_c.value/4294967296.0;
 input->scale_ratio_depth.vinit_c = pipe->plane_res.scl_data.inits.v_c.value/4294967296.0;
 if (input->scale_ratio_depth.vinit_c < 1.0)
   input->scale_ratio_depth.vinit_c = 1;
 switch (pipe->plane_res.scl_data.lb_params.depth) {
 case 140:
  input->scale_ratio_depth.lb_depth = 30; break;
 case 139:
  input->scale_ratio_depth.lb_depth = 36; break;
 default:
  input->scale_ratio_depth.lb_depth = 24; break;
 }


 input->dest.vactive = pipe->stream->timing.v_addressable + pipe->stream->timing.v_border_top
   + pipe->stream->timing.v_border_bottom;

 input->dest.recout_width = pipe->plane_res.scl_data.recout.width;
 input->dest.recout_height = pipe->plane_res.scl_data.recout.height;

 input->dest.full_recout_width = pipe->plane_res.scl_data.recout.width;
 input->dest.full_recout_height = pipe->plane_res.scl_data.recout.height;

 input->dest.htotal = pipe->stream->timing.h_total;
 input->dest.hblank_start = input->dest.htotal - pipe->stream->timing.h_front_porch;
 input->dest.hblank_end = input->dest.hblank_start
   - pipe->stream->timing.h_addressable
   - pipe->stream->timing.h_border_left
   - pipe->stream->timing.h_border_right;

 input->dest.vtotal = pipe->stream->timing.v_total;
 input->dest.vblank_start = input->dest.vtotal - pipe->stream->timing.v_front_porch;
 input->dest.vblank_end = input->dest.vblank_start
   - pipe->stream->timing.v_addressable
   - pipe->stream->timing.v_border_bottom
   - pipe->stream->timing.v_border_top;
 input->dest.pixel_rate_mhz = pipe->stream->timing.pix_clk_100hz/10000.0;
 input->dest.vstartup_start = pipe->pipe_dlg_param.vstartup_start;
 input->dest.vupdate_offset = pipe->pipe_dlg_param.vupdate_offset;
 input->dest.vupdate_offset = pipe->pipe_dlg_param.vupdate_offset;
 input->dest.vupdate_width = pipe->pipe_dlg_param.vupdate_width;

}
