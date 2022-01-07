
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct timing_generator {TYPE_2__* funcs; } ;
struct mcif_wb {TYPE_8__* funcs; } ;
struct dwbc {TYPE_9__* funcs; } ;
struct TYPE_11__ {int dest_height; } ;
struct dc_writeback_info {size_t dwb_pipe_inst; int wb_enabled; TYPE_10__ dwb_params; int mcif_buf_params; } ;
struct dc_stream_status {size_t primary_otg_inst; } ;
struct dc {TYPE_7__* current_state; TYPE_1__* res_pool; } ;
struct TYPE_20__ {int (* enable ) (struct dwbc*,TYPE_10__*) ;} ;
struct TYPE_19__ {int (* enable_mcif ) (struct mcif_wb*) ;int (* config_mcif_arb ) (struct mcif_wb*,int *) ;int (* config_mcif_buf ) (struct mcif_wb*,int *,int ) ;} ;
struct TYPE_14__ {int * mcif_wb_arb; } ;
struct TYPE_15__ {TYPE_3__ bw_writeback; } ;
struct TYPE_16__ {TYPE_4__ dcn; } ;
struct TYPE_17__ {TYPE_5__ bw; } ;
struct TYPE_18__ {TYPE_6__ bw_ctx; } ;
struct TYPE_13__ {int (* set_dwb_source ) (struct timing_generator*,size_t) ;} ;
struct TYPE_12__ {struct timing_generator** timing_generators; struct mcif_wb** mcif_wb; struct dwbc** dwbc; } ;


 int ASSERT (int) ;
 size_t MAX_DWB_PIPES ;
 size_t MAX_PIPES ;
 int stub1 (struct timing_generator*,size_t) ;
 int stub2 (struct mcif_wb*,int *,int ) ;
 int stub3 (struct mcif_wb*,int *) ;
 int stub4 (struct mcif_wb*) ;
 int stub5 (struct dwbc*,TYPE_10__*) ;

__attribute__((used)) static void dcn20_enable_writeback(
  struct dc *dc,
  const struct dc_stream_status *stream_status,
  struct dc_writeback_info *wb_info)
{
 struct dwbc *dwb;
 struct mcif_wb *mcif_wb;
 struct timing_generator *optc;

 ASSERT(wb_info->dwb_pipe_inst < MAX_DWB_PIPES);
 ASSERT(wb_info->wb_enabled);
 dwb = dc->res_pool->dwbc[wb_info->dwb_pipe_inst];
 mcif_wb = dc->res_pool->mcif_wb[wb_info->dwb_pipe_inst];


 ASSERT(stream_status->primary_otg_inst < MAX_PIPES);
 optc = dc->res_pool->timing_generators[stream_status->primary_otg_inst];
 optc->funcs->set_dwb_source(optc, wb_info->dwb_pipe_inst);

 mcif_wb->funcs->config_mcif_buf(mcif_wb, &wb_info->mcif_buf_params, wb_info->dwb_params.dest_height);
 mcif_wb->funcs->config_mcif_arb(mcif_wb, &dc->current_state->bw_ctx.bw.dcn.bw_writeback.mcif_wb_arb[wb_info->dwb_pipe_inst]);

 mcif_wb->funcs->enable_mcif(mcif_wb);

 dwb->funcs->enable(dwb, &wb_info->dwb_params);

}
