
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dcn_bw_internal_vars {int dummy; } ;
struct dc_state {int stream_count; TYPE_2__** streams; } ;
struct dc_debug_options {scalar_t__ pipe_split_policy; scalar_t__ force_single_disp_pipe_split; } ;
struct TYPE_3__ {int pix_clk_100hz; } ;
struct TYPE_4__ {TYPE_1__ timing; } ;


 scalar_t__ MPC_SPLIT_AVOID ;
 scalar_t__ MPC_SPLIT_AVOID_MULT_DISP ;
 int hack_disable_optional_pipe_split (struct dcn_bw_internal_vars*) ;
 int hack_force_pipe_split (struct dcn_bw_internal_vars*,int ) ;

__attribute__((used)) static void hack_bounding_box(struct dcn_bw_internal_vars *v,
  struct dc_debug_options *dbg,
  struct dc_state *context)
{
 if (dbg->pipe_split_policy == MPC_SPLIT_AVOID)
  hack_disable_optional_pipe_split(v);

 if (dbg->pipe_split_policy == MPC_SPLIT_AVOID_MULT_DISP &&
  context->stream_count >= 2)
  hack_disable_optional_pipe_split(v);

 if (context->stream_count == 1 &&
   dbg->force_single_disp_pipe_split)
  hack_force_pipe_split(v, context->streams[0]->timing.pix_clk_100hz);
}
