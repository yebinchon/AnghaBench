#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ audio; int /*<<< orphan*/  stream_enc; } ;
struct pipe_ctx {struct pipe_ctx* next_odm_pipe; int /*<<< orphan*/  clock_source; TYPE_1__ stream_res; } ;
struct dc_stream_state {int dummy; } ;
struct dc_state {int stream_count; struct pipe_ctx* stream_status; struct dc_stream_state** streams; int /*<<< orphan*/  res_ctx; } ;
struct dc_context {int dummy; } ;
struct dc {TYPE_3__* res_pool; struct dc_context* ctx; } ;
typedef  enum dc_status { ____Placeholder_dc_status } dc_status ;
struct TYPE_8__ {TYPE_2__* funcs; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* remove_stream_from_ctx ) (struct dc*,struct dc_state*,struct dc_stream_state*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct dc_stream_state*) ; 
 int DC_ERROR_UNEXPECTED ; 
 int DC_OK ; 
 int /*<<< orphan*/  FUNC2 (struct dc_stream_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_ctx*,int /*<<< orphan*/ ,int) ; 
 struct pipe_ctx* FUNC4 (int /*<<< orphan*/ *,struct dc_stream_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dc*,struct dc_state*,struct dc_stream_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int) ; 

enum dc_status FUNC9(
			struct dc *dc,
			struct dc_state *new_ctx,
			struct dc_stream_state *stream)
{
	int i;
	struct dc_context *dc_ctx = dc->ctx;
	struct pipe_ctx *del_pipe = FUNC4(&new_ctx->res_ctx, stream);
	struct pipe_ctx *odm_pipe;

	if (!del_pipe) {
		FUNC1("Pipe not found for stream %p !\n", stream);
		return DC_ERROR_UNEXPECTED;
	}

	odm_pipe = del_pipe->next_odm_pipe;

	/* Release primary pipe */
	FUNC0(del_pipe->stream_res.stream_enc);
	FUNC8(
			&new_ctx->res_ctx,
				dc->res_pool,
			del_pipe->stream_res.stream_enc,
			false);

	if (del_pipe->stream_res.audio)
		FUNC7(
			&new_ctx->res_ctx,
			dc->res_pool,
			del_pipe->stream_res.audio,
			false);

	FUNC5(&new_ctx->res_ctx,
					  dc->res_pool,
					  del_pipe->clock_source);

	if (dc->res_pool->funcs->remove_stream_from_ctx)
		dc->res_pool->funcs->remove_stream_from_ctx(dc, new_ctx, stream);

	while (odm_pipe) {
		struct pipe_ctx *next_odm_pipe = odm_pipe->next_odm_pipe;

		FUNC3(odm_pipe, 0, sizeof(*odm_pipe));
		odm_pipe = next_odm_pipe;
	}
	FUNC3(del_pipe, 0, sizeof(*del_pipe));

	for (i = 0; i < new_ctx->stream_count; i++)
		if (new_ctx->streams[i] == stream)
			break;

	if (new_ctx->streams[i] != stream) {
		FUNC1("Context doesn't have stream %p !\n", stream);
		return DC_ERROR_UNEXPECTED;
	}

	FUNC2(new_ctx->streams[i]);
	new_ctx->stream_count--;

	/* Trim back arrays */
	for (; i < new_ctx->stream_count; i++) {
		new_ctx->streams[i] = new_ctx->streams[i + 1];
		new_ctx->stream_status[i] = new_ctx->stream_status[i + 1];
	}

	new_ctx->streams[new_ctx->stream_count] = NULL;
	FUNC3(
			&new_ctx->stream_status[new_ctx->stream_count],
			0,
			sizeof(new_ctx->stream_status[0]));

	return DC_OK;
}