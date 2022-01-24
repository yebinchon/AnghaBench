#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pipe_ctx {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int /*<<< orphan*/  res_ctx; } ;
struct dc {TYPE_1__* res_pool; } ;
typedef  enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_2__ {int /*<<< orphan*/  underlay_pipe_index; } ;

/* Variables and functions */
 int DC_ERROR_UNEXPECTED ; 
 int DC_OK ; 
 int DC_SURFACE_PIXEL_FORMAT_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_ctx*) ; 
 struct pipe_ctx* FUNC3 (int /*<<< orphan*/ *,struct dc_stream_state*) ; 

__attribute__((used)) static enum dc_status FUNC4(
		const struct dc *dc,
		struct dc_state *context,
		struct dc_stream_state *stream)
{
	struct pipe_ctx *pipe_ctx = FUNC3(&context->res_ctx, stream);

	if (!pipe_ctx)
		return DC_ERROR_UNEXPECTED;

	if (!FUNC1(pipe_ctx,
			dc->res_pool->underlay_pipe_index))
		return DC_SURFACE_PIXEL_FORMAT_UNSUPPORTED;

	FUNC0(pipe_ctx);

	/* TODO: validate audio ASIC caps, encoder */

	FUNC2(pipe_ctx);

	return DC_OK;
}