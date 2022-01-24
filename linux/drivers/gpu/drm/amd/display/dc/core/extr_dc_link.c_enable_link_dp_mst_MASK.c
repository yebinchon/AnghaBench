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
struct pipe_ctx {TYPE_1__* stream; } ;
struct dc_state {int dummy; } ;
struct TYPE_4__ {scalar_t__ lane_count; } ;
struct dc_link {int /*<<< orphan*/  ctx; TYPE_2__ cur_link_settings; } ;
typedef  enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_3__ {struct dc_link* link; } ;

/* Variables and functions */
 int DC_OK ; 
 scalar_t__ LANE_COUNT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dc_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dc_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_link*,int) ; 
 int FUNC3 (struct dc_state*,struct pipe_ctx*) ; 

__attribute__((used)) static enum dc_status FUNC4(
		struct dc_state *state,
		struct pipe_ctx *pipe_ctx)
{
	struct dc_link *link = pipe_ctx->stream->link;

	/* sink signal type after MST branch is MST. Multiple MST sinks
	 * share one link. Link DP PHY is enable or training only once.
	 */
	if (link->cur_link_settings.lane_count != LANE_COUNT_UNKNOWN)
		return DC_OK;

	/* clear payload table */
	FUNC0(link->ctx, link);

	/* to make sure the pending down rep can be processed
	 * before enabling the link
	 */
	FUNC1(link->ctx, link);

	/* set the sink to MST mode before enabling the link */
	FUNC2(link, true);

	return FUNC3(state, pipe_ctx);
}