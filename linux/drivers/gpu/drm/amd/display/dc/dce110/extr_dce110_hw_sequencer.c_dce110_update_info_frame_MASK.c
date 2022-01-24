#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  encoder_info_frame; TYPE_3__* stream_enc; } ;
struct pipe_ctx {TYPE_2__ stream_res; TYPE_5__* stream; } ;
struct TYPE_9__ {int /*<<< orphan*/  signal; } ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* update_dp_info_packets ) (TYPE_3__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_hdmi_info_packets ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

void FUNC5(struct pipe_ctx *pipe_ctx)
{
	bool is_hdmi_tmds;
	bool is_dp;

	FUNC0(pipe_ctx->stream);

	if (pipe_ctx->stream_res.stream_enc == NULL)
		return;  /* this is not root pipe */

	is_hdmi_tmds = FUNC2(pipe_ctx->stream->signal);
	is_dp = FUNC1(pipe_ctx->stream->signal);

	if (!is_hdmi_tmds && !is_dp)
		return;

	if (is_hdmi_tmds)
		pipe_ctx->stream_res.stream_enc->funcs->update_hdmi_info_packets(
			pipe_ctx->stream_res.stream_enc,
			&pipe_ctx->stream_res.encoder_info_frame);
	else
		pipe_ctx->stream_res.stream_enc->funcs->update_dp_info_packets(
			pipe_ctx->stream_res.stream_enc,
			&pipe_ctx->stream_res.encoder_info_frame);
}