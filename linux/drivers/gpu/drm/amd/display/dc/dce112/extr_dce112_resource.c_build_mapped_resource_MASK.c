#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pipe_ctx {int dummy; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int /*<<< orphan*/  res_ctx; } ;
struct dc {int dummy; } ;
typedef  enum dc_status { ____Placeholder_dc_status } dc_status ;

/* Variables and functions */
 int DC_ERROR_UNEXPECTED ; 
 int DC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_ctx*) ; 
 struct pipe_ctx* FUNC2 (int /*<<< orphan*/ *,struct dc_stream_state*) ; 

__attribute__((used)) static enum dc_status FUNC3(
		const struct dc *dc,
		struct dc_state *context,
		struct dc_stream_state *stream)
{
	struct pipe_ctx *pipe_ctx = FUNC2(&context->res_ctx, stream);

	if (!pipe_ctx)
		return DC_ERROR_UNEXPECTED;

	FUNC0(pipe_ctx);

	FUNC1(pipe_ctx);

	return DC_OK;
}