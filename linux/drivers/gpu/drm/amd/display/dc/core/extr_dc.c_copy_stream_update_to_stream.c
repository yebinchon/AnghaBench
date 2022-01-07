
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* uint32_t ;
struct dc_transfer_func_distributed_points {int dummy; } ;
struct TYPE_10__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_9__ {scalar_t__ width; scalar_t__ height; } ;
struct dc_stream_update {struct dc_dsc_config* dsc_config; TYPE_4__* wb_update; int * dither_option; int * vsp_infopacket; int * vsc_infopacket; int * dpms_off; int * vrr_infopacket; int * output_csc_transform; int * output_color_space; int * gamut_remap; int * periodic_interrupt1; int * periodic_interrupt0; int * abm_level; int * hdr_static_metadata; TYPE_3__* out_transfer_func; TYPE_2__ dst; TYPE_1__ src; } ;
struct TYPE_15__ {void* DSC; } ;
struct dc_dsc_config {scalar_t__ num_slices_h; scalar_t__ num_slices_v; } ;
struct TYPE_16__ {TYPE_7__ flags; struct dc_dsc_config dsc_cfg; } ;
struct dc_stream_state {int num_wb_info; TYPE_8__ timing; int * writeback_info; int dither_option; int vsp_infopacket; int vsc_infopacket; int dpms_off; int vrr_infopacket; int csc_color_matrix; int output_color_space; int gamut_remap_matrix; int periodic_interrupt1; int periodic_interrupt0; int abm_level; int hdr_static_metadata; TYPE_3__* out_transfer_func; TYPE_2__ dst; TYPE_1__ src; } ;
struct dc_state {int dummy; } ;
struct dc {TYPE_6__* res_pool; } ;
struct TYPE_14__ {TYPE_5__* funcs; } ;
struct TYPE_13__ {int (* validate_bandwidth ) (struct dc*,struct dc_state*,int) ;} ;
struct TYPE_12__ {int num_wb_info; int * writeback_info; } ;
struct TYPE_11__ {int tf_pts; int type; int tf; int sdr_ref_white_level; } ;


 int ASSERT (int) ;
 int MAX_DWB_PIPES ;
 int memcpy (int *,int *,int) ;
 int stub1 (struct dc*,struct dc_state*,int) ;

__attribute__((used)) static void copy_stream_update_to_stream(struct dc *dc,
      struct dc_state *context,
      struct dc_stream_state *stream,
      const struct dc_stream_update *update)
{
 if (update == ((void*)0) || stream == ((void*)0))
  return;

 if (update->src.height && update->src.width)
  stream->src = update->src;

 if (update->dst.height && update->dst.width)
  stream->dst = update->dst;

 if (update->out_transfer_func &&
     stream->out_transfer_func != update->out_transfer_func) {
  stream->out_transfer_func->sdr_ref_white_level =
   update->out_transfer_func->sdr_ref_white_level;
  stream->out_transfer_func->tf = update->out_transfer_func->tf;
  stream->out_transfer_func->type =
   update->out_transfer_func->type;
  memcpy(&stream->out_transfer_func->tf_pts,
         &update->out_transfer_func->tf_pts,
         sizeof(struct dc_transfer_func_distributed_points));
 }

 if (update->hdr_static_metadata)
  stream->hdr_static_metadata = *update->hdr_static_metadata;

 if (update->abm_level)
  stream->abm_level = *update->abm_level;

 if (update->periodic_interrupt0)
  stream->periodic_interrupt0 = *update->periodic_interrupt0;

 if (update->periodic_interrupt1)
  stream->periodic_interrupt1 = *update->periodic_interrupt1;

 if (update->gamut_remap)
  stream->gamut_remap_matrix = *update->gamut_remap;





 if (update->output_color_space)
  stream->output_color_space = *update->output_color_space;

 if (update->output_csc_transform)
  stream->csc_color_matrix = *update->output_csc_transform;

 if (update->vrr_infopacket)
  stream->vrr_infopacket = *update->vrr_infopacket;

 if (update->dpms_off)
  stream->dpms_off = *update->dpms_off;

 if (update->vsc_infopacket)
  stream->vsc_infopacket = *update->vsc_infopacket;

 if (update->vsp_infopacket)
  stream->vsp_infopacket = *update->vsp_infopacket;

 if (update->dither_option)
  stream->dither_option = *update->dither_option;
}
