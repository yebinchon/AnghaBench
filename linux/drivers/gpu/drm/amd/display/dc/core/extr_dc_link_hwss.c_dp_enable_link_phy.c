
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int requested_pix_clk_100hz; } ;
struct TYPE_14__ {TYPE_13__ pix_clk_params; } ;
struct pipe_ctx {int pll_settings; TYPE_10__ stream_res; struct clock_source* clock_source; TYPE_8__* stream; } ;
struct link_encoder {TYPE_11__* funcs; } ;
struct dmcu {TYPE_12__* funcs; } ;
struct dc_link_settings {int dummy; } ;
struct dc_link {struct dc_link_settings cur_link_settings; TYPE_6__* dc; TYPE_1__* ctx; struct link_encoder* link_enc; } ;
struct dc {TYPE_2__* res_pool; } ;
struct clock_source {scalar_t__ id; TYPE_9__* funcs; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;
struct TYPE_26__ {int (* program_pix_clk ) (struct clock_source*,TYPE_13__*,int *) ;} ;
struct TYPE_24__ {int pix_clk_100hz; } ;
struct TYPE_25__ {TYPE_7__ timing; struct dc_link* link; } ;
struct TYPE_23__ {TYPE_5__* res_pool; TYPE_4__* current_state; } ;
struct TYPE_22__ {struct clock_source* dp_clock_source; } ;
struct TYPE_20__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_21__ {TYPE_3__ res_ctx; } ;
struct TYPE_19__ {struct dmcu* dmcu; } ;
struct TYPE_18__ {struct dc* dc; } ;
struct TYPE_16__ {int (* unlock_phy ) (struct dmcu*) ;int (* lock_phy ) (struct dmcu*) ;} ;
struct TYPE_15__ {int (* enable_dp_mst_output ) (struct link_encoder*,struct dc_link_settings const*,int) ;int (* enable_dp_output ) (struct link_encoder*,struct dc_link_settings const*,int) ;} ;


 scalar_t__ CLOCK_SOURCE_ID_DP_DTO ;
 unsigned int MAX_PIPES ;
 scalar_t__ dc_is_dp_sst_signal (int) ;
 int dp_receiver_power_ctrl (struct dc_link*,int) ;
 int stub1 (struct clock_source*,TYPE_13__*,int *) ;
 int stub2 (struct dmcu*) ;
 int stub3 (struct link_encoder*,struct dc_link_settings const*,int) ;
 int stub4 (struct link_encoder*,struct dc_link_settings const*,int) ;
 int stub5 (struct dmcu*) ;

void dp_enable_link_phy(
 struct dc_link *link,
 enum signal_type signal,
 enum clock_source_id clock_source,
 const struct dc_link_settings *link_settings)
{
 struct link_encoder *link_enc = link->link_enc;
 struct dc *core_dc = link->ctx->dc;
 struct dmcu *dmcu = core_dc->res_pool->dmcu;

 struct pipe_ctx *pipes =
   link->dc->current_state->res_ctx.pipe_ctx;
 struct clock_source *dp_cs =
   link->dc->res_pool->dp_clock_source;
 unsigned int i;




 for (i = 0; i < MAX_PIPES; i++) {
  if (pipes[i].stream != ((void*)0) &&
   pipes[i].stream->link == link) {
   if (pipes[i].clock_source != ((void*)0) &&
     pipes[i].clock_source->id != CLOCK_SOURCE_ID_DP_DTO) {
    pipes[i].clock_source = dp_cs;
    pipes[i].stream_res.pix_clk_params.requested_pix_clk_100hz =
      pipes[i].stream->timing.pix_clk_100hz;
    pipes[i].clock_source->funcs->program_pix_clk(
       pipes[i].clock_source,
       &pipes[i].stream_res.pix_clk_params,
       &pipes[i].pll_settings);
   }
  }
 }

 if (dmcu != ((void*)0) && dmcu->funcs->lock_phy)
  dmcu->funcs->lock_phy(dmcu);

 if (dc_is_dp_sst_signal(signal)) {
  link_enc->funcs->enable_dp_output(
      link_enc,
      link_settings,
      clock_source);
 } else {
  link_enc->funcs->enable_dp_mst_output(
      link_enc,
      link_settings,
      clock_source);
 }

 if (dmcu != ((void*)0) && dmcu->funcs->unlock_phy)
  dmcu->funcs->unlock_phy(dmcu);

 link->cur_link_settings = *link_settings;

 dp_receiver_power_ctrl(link, 1);
}
