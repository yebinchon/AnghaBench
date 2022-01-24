#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dcn_bw_internal_vars {int dummy; } ;
struct dc_state {int stream_count; TYPE_2__** streams; } ;
struct dc_debug_options {scalar_t__ pipe_split_policy; scalar_t__ force_single_disp_pipe_split; } ;
struct TYPE_3__ {int /*<<< orphan*/  pix_clk_100hz; } ;
struct TYPE_4__ {TYPE_1__ timing; } ;

/* Variables and functions */
 scalar_t__ MPC_SPLIT_AVOID ; 
 scalar_t__ MPC_SPLIT_AVOID_MULT_DISP ; 
 int /*<<< orphan*/  FUNC0 (struct dcn_bw_internal_vars*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcn_bw_internal_vars*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dcn_bw_internal_vars *v,
		struct dc_debug_options *dbg,
		struct dc_state *context)
{
	if (dbg->pipe_split_policy == MPC_SPLIT_AVOID)
		FUNC0(v);

	if (dbg->pipe_split_policy == MPC_SPLIT_AVOID_MULT_DISP &&
		context->stream_count >= 2)
		FUNC0(v);

	if (context->stream_count == 1 &&
			dbg->force_single_disp_pipe_split)
		FUNC1(v, context->streams[0]->timing.pix_clk_100hz);
}