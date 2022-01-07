
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource_context {TYPE_3__* pipe_ctx; } ;
struct TYPE_15__ {int v_taps_c; int h_taps_c; } ;
struct TYPE_14__ {int crop_width; int crop_height; } ;
struct TYPE_16__ {scalar_t__ out_format; scalar_t__ output_depth; TYPE_5__ scaler_taps; int dest_height; int dest_width; TYPE_4__ cnv_params; } ;
struct dc_writeback_info {int wb_enabled; TYPE_6__ dwb_params; } ;
struct dc {TYPE_1__* res_pool; } ;
struct TYPE_17__ {int wb_htaps_luma; int wb_vtaps_luma; double wb_hratio; double wb_vratio; int wb_pixel_format; int wb_vtaps_chroma; int wb_htaps_chroma; int wb_dst_height; int wb_dst_width; int wb_src_width; int wb_src_height; } ;
struct TYPE_18__ {int wb_enable; TYPE_7__ wb; int num_active_wb; } ;
struct TYPE_19__ {TYPE_8__ dout; } ;
typedef TYPE_9__ display_e2e_pipe_params_st ;
struct TYPE_13__ {TYPE_2__* stream; } ;
struct TYPE_12__ {struct dc_writeback_info* writeback_info; } ;
struct TYPE_11__ {int pipe_count; } ;


 scalar_t__ DWB_OUTPUT_PIXEL_DEPTH_8BPC ;
 int dm_420_10 ;
 int dm_420_8 ;
 int dm_444_32 ;
 scalar_t__ dwb_scaler_mode_yuv420 ;

void dcn20_populate_dml_writeback_from_context(
  struct dc *dc, struct resource_context *res_ctx, display_e2e_pipe_params_st *pipes)
{
 int pipe_cnt, i;

 for (i = 0, pipe_cnt = 0; i < dc->res_pool->pipe_count; i++) {
  struct dc_writeback_info *wb_info = &res_ctx->pipe_ctx[i].stream->writeback_info[0];

  if (!res_ctx->pipe_ctx[i].stream)
   continue;


  pipes[pipe_cnt].dout.wb_enable = (wb_info->wb_enabled == 1) ? 1 : 0;
  pipes[pipe_cnt].dout.num_active_wb++;
  pipes[pipe_cnt].dout.wb.wb_src_height = wb_info->dwb_params.cnv_params.crop_height;
  pipes[pipe_cnt].dout.wb.wb_src_width = wb_info->dwb_params.cnv_params.crop_width;
  pipes[pipe_cnt].dout.wb.wb_dst_width = wb_info->dwb_params.dest_width;
  pipes[pipe_cnt].dout.wb.wb_dst_height = wb_info->dwb_params.dest_height;
  pipes[pipe_cnt].dout.wb.wb_htaps_luma = 1;
  pipes[pipe_cnt].dout.wb.wb_vtaps_luma = 1;
  pipes[pipe_cnt].dout.wb.wb_htaps_chroma = wb_info->dwb_params.scaler_taps.h_taps_c;
  pipes[pipe_cnt].dout.wb.wb_vtaps_chroma = wb_info->dwb_params.scaler_taps.v_taps_c;
  pipes[pipe_cnt].dout.wb.wb_hratio = 1.0;
  pipes[pipe_cnt].dout.wb.wb_vratio = 1.0;
  if (wb_info->dwb_params.out_format == dwb_scaler_mode_yuv420) {
   if (wb_info->dwb_params.output_depth == DWB_OUTPUT_PIXEL_DEPTH_8BPC)
    pipes[pipe_cnt].dout.wb.wb_pixel_format = dm_420_8;
   else
    pipes[pipe_cnt].dout.wb.wb_pixel_format = dm_420_10;
  } else
   pipes[pipe_cnt].dout.wb.wb_pixel_format = dm_444_32;

  pipe_cnt++;
 }

}
