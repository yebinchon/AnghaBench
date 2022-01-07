
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_23__ ;
typedef struct TYPE_38__ TYPE_22__ ;
typedef struct TYPE_37__ TYPE_21__ ;
typedef struct TYPE_36__ TYPE_20__ ;
typedef struct TYPE_35__ TYPE_1__ ;
typedef struct TYPE_34__ TYPE_19__ ;
typedef struct TYPE_33__ TYPE_18__ ;
typedef struct TYPE_32__ TYPE_17__ ;
typedef struct TYPE_31__ TYPE_16__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


typedef int tbl_entry ;
struct xfm_grph_csc_adjustment {int * temperature_matrix; int gamut_adjust_type; int * regval; int color_space; } ;
struct TYPE_46__ {int y; int x; int height; int width; } ;
struct TYPE_45__ {int y; int x; int height; int width; } ;
struct TYPE_29__ {int alpha_en; } ;
struct TYPE_30__ {TYPE_8__ recout; TYPE_7__ viewport; TYPE_14__ lb_params; } ;
struct TYPE_33__ {TYPE_15__ scl_data; struct mem_input* mi; TYPE_23__* xfm; } ;
struct pipe_ctx {size_t pipe_idx; scalar_t__ bottom_pipe; TYPE_18__ plane_res; struct dc_plane_state* plane_state; TYPE_22__* stream; } ;
struct out_csc_color_matrix {int * temperature_matrix; int gamut_adjust_type; int * regval; int color_space; } ;
struct mem_input {TYPE_17__* funcs; int inst; } ;
struct TYPE_44__ {int height; int width; int y; int x; } ;
struct TYPE_43__ {int height; int width; int y; int x; } ;
struct TYPE_42__ {int height; int width; int y; int x; } ;
struct TYPE_35__ {int low_part; int high_part; } ;
struct TYPE_40__ {TYPE_1__ addr; } ;
struct TYPE_41__ {TYPE_2__ grph; } ;
struct TYPE_34__ {scalar_t__ full_update; scalar_t__ gamma_change; scalar_t__ in_transfer_func_change; } ;
struct TYPE_36__ {TYPE_19__ bits; } ;
struct dc_plane_state {TYPE_6__ clip_rect; TYPE_5__ dst_rect; TYPE_4__ src_rect; TYPE_3__ address; TYPE_20__ update_flags; int rotation; int tiling_info; int format; int visible; int plane_size; } ;
struct TYPE_37__ {int (* set_output_transfer_func ) (struct pipe_ctx*,TYPE_22__*) ;int (* set_input_transfer_func ) (struct pipe_ctx*,struct dc_plane_state*) ;} ;
struct TYPE_31__ {scalar_t__ gpu_vm_support; } ;
struct dc {TYPE_21__ hwss; TYPE_16__ config; int hwseq; TYPE_10__* current_state; } ;
typedef int adjust ;
struct TYPE_47__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_39__ {TYPE_13__* funcs; } ;
struct TYPE_27__ {int enable_remap; int * matrix; } ;
struct TYPE_26__ {int enable_adjustment; int * matrix; } ;
struct TYPE_38__ {TYPE_12__ gamut_remap_matrix; TYPE_11__ csc_color_matrix; int output_color_space; } ;
struct TYPE_32__ {int (* mem_input_program_pte_vm ) (struct mem_input*,int ,int *,int ) ;int (* set_blank ) (struct mem_input*,int ) ;int (* mem_input_program_surface_config ) (struct mem_input*,int ,int *,int *,int ,int *,int) ;} ;
struct TYPE_28__ {int (* transform_set_gamut_remap ) (TYPE_23__*,struct xfm_grph_csc_adjustment*) ;int (* opp_set_csc_adjustment ) (TYPE_23__*,struct xfm_grph_csc_adjustment*) ;} ;
struct TYPE_25__ {TYPE_9__ res_ctx; } ;


 unsigned int CSC_TEMPERATURE_MATRIX_SIZE ;
 int DC_LOGGER_INIT () ;
 int DC_LOG_SURFACE (char*,size_t,void*,int ,int ,int ,int ,int ,int ,int ,...) ;
 int GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS ;
 int GRAPHICS_GAMUT_ADJUST_TYPE_SW ;
 int dce_enable_fe_clock (int ,int ,int) ;
 int memset (struct xfm_grph_csc_adjustment*,int ,int) ;
 int program_scaler (struct dc*,struct pipe_ctx*) ;
 int set_default_colors (struct pipe_ctx*) ;
 int stub1 (TYPE_23__*,struct xfm_grph_csc_adjustment*) ;
 int stub2 (TYPE_23__*,struct xfm_grph_csc_adjustment*) ;
 int stub3 (struct mem_input*,int ,int *,int *,int ,int *,int) ;
 int stub4 (struct mem_input*,int ) ;
 int stub5 (struct mem_input*,int ,int *,int ) ;
 int stub6 (struct pipe_ctx*,struct dc_plane_state*) ;
 int stub7 (struct pipe_ctx*,TYPE_22__*) ;

__attribute__((used)) static void dce110_program_front_end_for_pipe(
  struct dc *dc, struct pipe_ctx *pipe_ctx)
{
 struct mem_input *mi = pipe_ctx->plane_res.mi;
 struct pipe_ctx *old_pipe = ((void*)0);
 struct dc_plane_state *plane_state = pipe_ctx->plane_state;
 struct xfm_grph_csc_adjustment adjust;
 struct out_csc_color_matrix tbl_entry;
 unsigned int i;
 DC_LOGGER_INIT();
 memset(&tbl_entry, 0, sizeof(tbl_entry));

 if (dc->current_state)
  old_pipe = &dc->current_state->res_ctx.pipe_ctx[pipe_ctx->pipe_idx];

 memset(&adjust, 0, sizeof(adjust));
 adjust.gamut_adjust_type = GRAPHICS_GAMUT_ADJUST_TYPE_BYPASS;

 dce_enable_fe_clock(dc->hwseq, mi->inst, 1);

 set_default_colors(pipe_ctx);
 if (pipe_ctx->stream->csc_color_matrix.enable_adjustment
   == 1) {
  tbl_entry.color_space =
   pipe_ctx->stream->output_color_space;

  for (i = 0; i < 12; i++)
   tbl_entry.regval[i] =
   pipe_ctx->stream->csc_color_matrix.matrix[i];

  pipe_ctx->plane_res.xfm->funcs->opp_set_csc_adjustment
    (pipe_ctx->plane_res.xfm, &tbl_entry);
 }

 if (pipe_ctx->stream->gamut_remap_matrix.enable_remap == 1) {
  adjust.gamut_adjust_type = GRAPHICS_GAMUT_ADJUST_TYPE_SW;

  for (i = 0; i < CSC_TEMPERATURE_MATRIX_SIZE; i++)
   adjust.temperature_matrix[i] =
    pipe_ctx->stream->gamut_remap_matrix.matrix[i];
 }

 pipe_ctx->plane_res.xfm->funcs->transform_set_gamut_remap(pipe_ctx->plane_res.xfm, &adjust);

 pipe_ctx->plane_res.scl_data.lb_params.alpha_en = pipe_ctx->bottom_pipe != 0;

 program_scaler(dc, pipe_ctx);

 mi->funcs->mem_input_program_surface_config(
   mi,
   plane_state->format,
   &plane_state->tiling_info,
   &plane_state->plane_size,
   plane_state->rotation,
   ((void*)0),
   0);
 if (mi->funcs->set_blank)
  mi->funcs->set_blank(mi, pipe_ctx->plane_state->visible);

 if (dc->config.gpu_vm_support)
  mi->funcs->mem_input_program_pte_vm(
    pipe_ctx->plane_res.mi,
    plane_state->format,
    &plane_state->tiling_info,
    plane_state->rotation);


 if (pipe_ctx->plane_state->update_flags.bits.full_update ||
   pipe_ctx->plane_state->update_flags.bits.in_transfer_func_change ||
   pipe_ctx->plane_state->update_flags.bits.gamma_change)
  dc->hwss.set_input_transfer_func(pipe_ctx, pipe_ctx->plane_state);

 if (pipe_ctx->plane_state->update_flags.bits.full_update)
  dc->hwss.set_output_transfer_func(pipe_ctx, pipe_ctx->stream);

 DC_LOG_SURFACE(
   "Pipe:%d %p: addr hi:0x%x, "
   "addr low:0x%x, "
   "src: %d, %d, %d,"
   " %d; dst: %d, %d, %d, %d;"
   "clip: %d, %d, %d, %d\n",
   pipe_ctx->pipe_idx,
   (void *) pipe_ctx->plane_state,
   pipe_ctx->plane_state->address.grph.addr.high_part,
   pipe_ctx->plane_state->address.grph.addr.low_part,
   pipe_ctx->plane_state->src_rect.x,
   pipe_ctx->plane_state->src_rect.y,
   pipe_ctx->plane_state->src_rect.width,
   pipe_ctx->plane_state->src_rect.height,
   pipe_ctx->plane_state->dst_rect.x,
   pipe_ctx->plane_state->dst_rect.y,
   pipe_ctx->plane_state->dst_rect.width,
   pipe_ctx->plane_state->dst_rect.height,
   pipe_ctx->plane_state->clip_rect.x,
   pipe_ctx->plane_state->clip_rect.y,
   pipe_ctx->plane_state->clip_rect.width,
   pipe_ctx->plane_state->clip_rect.height);

 DC_LOG_SURFACE(
   "Pipe %d: width, height, x, y\n"
   "viewport:%d, %d, %d, %d\n"
   "recout:  %d, %d, %d, %d\n",
   pipe_ctx->pipe_idx,
   pipe_ctx->plane_res.scl_data.viewport.width,
   pipe_ctx->plane_res.scl_data.viewport.height,
   pipe_ctx->plane_res.scl_data.viewport.x,
   pipe_ctx->plane_res.scl_data.viewport.y,
   pipe_ctx->plane_res.scl_data.recout.width,
   pipe_ctx->plane_res.scl_data.recout.height,
   pipe_ctx->plane_res.scl_data.recout.x,
   pipe_ctx->plane_res.scl_data.recout.y);
}
