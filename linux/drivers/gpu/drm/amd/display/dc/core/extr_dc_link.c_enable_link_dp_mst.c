
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pipe_ctx {TYPE_1__* stream; } ;
struct dc_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ lane_count; } ;
struct dc_link {int ctx; TYPE_2__ cur_link_settings; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_3__ {struct dc_link* link; } ;


 int DC_OK ;
 scalar_t__ LANE_COUNT_UNKNOWN ;
 int dm_helpers_dp_mst_clear_payload_allocation_table (int ,struct dc_link*) ;
 int dm_helpers_dp_mst_poll_pending_down_reply (int ,struct dc_link*) ;
 int dp_enable_mst_on_sink (struct dc_link*,int) ;
 int enable_link_dp (struct dc_state*,struct pipe_ctx*) ;

__attribute__((used)) static enum dc_status enable_link_dp_mst(
  struct dc_state *state,
  struct pipe_ctx *pipe_ctx)
{
 struct dc_link *link = pipe_ctx->stream->link;




 if (link->cur_link_settings.lane_count != LANE_COUNT_UNKNOWN)
  return DC_OK;


 dm_helpers_dp_mst_clear_payload_allocation_table(link->ctx, link);




 dm_helpers_dp_mst_poll_pending_down_reply(link->ctx, link);


 dp_enable_mst_on_sink(link, 1);

 return enable_link_dp(state, pipe_ctx);
}
