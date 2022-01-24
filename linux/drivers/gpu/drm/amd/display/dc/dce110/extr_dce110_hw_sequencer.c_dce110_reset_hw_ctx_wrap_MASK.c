#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_17__ ;
typedef  struct TYPE_23__   TYPE_14__ ;
typedef  struct TYPE_22__   TYPE_13__ ;
typedef  struct TYPE_21__   TYPE_12__ ;
typedef  struct TYPE_20__   TYPE_11__ ;
typedef  struct TYPE_19__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {TYPE_13__* mi; } ;
struct TYPE_28__ {TYPE_14__* tg; TYPE_12__* audio; } ;
struct pipe_ctx {TYPE_10__* stream; TYPE_6__ plane_res; TYPE_4__ stream_res; struct clock_source* clock_source; scalar_t__ top_pipe; } ;
struct TYPE_24__ {struct pipe_ctx* pipe_ctx; } ;
struct dc_state {TYPE_17__ res_ctx; } ;
struct TYPE_33__ {int /*<<< orphan*/  (* disable_plane ) (struct dc*,struct pipe_ctx*) ;} ;
struct TYPE_26__ {int dynamic_audio; } ;
struct dc {TYPE_9__ hwss; int /*<<< orphan*/  res_pool; TYPE_7__* current_state; TYPE_2__ caps; } ;
struct clock_source {TYPE_8__* funcs; } ;
struct TYPE_32__ {int /*<<< orphan*/  (* cs_power_down ) (struct clock_source*) ;} ;
struct TYPE_20__ {struct pipe_ctx* pipe_ctx; } ;
struct TYPE_31__ {int /*<<< orphan*/  stream_count; TYPE_11__ res_ctx; } ;
struct TYPE_29__ {int /*<<< orphan*/  (* free_mem_input ) (TYPE_13__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_27__ {int /*<<< orphan*/  (* disable_crtc ) (TYPE_14__*) ;int /*<<< orphan*/  (* set_blank ) (TYPE_14__*,int) ;} ;
struct TYPE_25__ {int /*<<< orphan*/  (* az_disable ) (TYPE_12__*) ;} ;
struct TYPE_23__ {TYPE_3__* funcs; } ;
struct TYPE_22__ {TYPE_5__* funcs; } ;
struct TYPE_21__ {TYPE_1__* funcs; } ;
struct TYPE_19__ {int /*<<< orphan*/  dpms_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_PIPES ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_14__*) ; 
 scalar_t__ FUNC4 (struct pipe_ctx*,struct pipe_ctx*) ; 
 scalar_t__ FUNC5 (TYPE_17__*,int /*<<< orphan*/ ,struct clock_source*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_14__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct clock_source*) ; 
 int /*<<< orphan*/  FUNC11 (struct dc*,struct pipe_ctx*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*,int /*<<< orphan*/ ,TYPE_12__*,int) ; 

__attribute__((used)) static void FUNC13(
		struct dc *dc,
		struct dc_state *context)
{
	int i;

	/* Reset old context */
	/* look up the targets that have been removed since last commit */
	for (i = 0; i < MAX_PIPES; i++) {
		struct pipe_ctx *pipe_ctx_old =
			&dc->current_state->res_ctx.pipe_ctx[i];
		struct pipe_ctx *pipe_ctx = &context->res_ctx.pipe_ctx[i];

		/* Note: We need to disable output if clock sources change,
		 * since bios does optimization and doesn't apply if changing
		 * PHY when not already disabled.
		 */

		/* Skip underlay pipe since it will be handled in commit surface*/
		if (!pipe_ctx_old->stream || pipe_ctx_old->top_pipe)
			continue;

		if (!pipe_ctx->stream ||
				FUNC4(pipe_ctx_old, pipe_ctx)) {
			struct clock_source *old_clk = pipe_ctx_old->clock_source;

			/* Disable if new stream is null. O/w, if stream is
			 * disabled already, no need to disable again.
			 */
			if (!pipe_ctx->stream || !pipe_ctx->stream->dpms_off) {
				FUNC1(pipe_ctx_old);

				/* free acquired resources*/
				if (pipe_ctx_old->stream_res.audio) {
					/*disable az_endpoint*/
					pipe_ctx_old->stream_res.audio->funcs->
							az_disable(pipe_ctx_old->stream_res.audio);

					/*free audio*/
					if (dc->caps.dynamic_audio == true) {
						/*we have to dynamic arbitrate the audio endpoints*/
						/*we free the resource, need reset is_audio_acquired*/
						FUNC12(&dc->current_state->res_ctx, dc->res_pool,
								pipe_ctx_old->stream_res.audio, false);
						pipe_ctx_old->stream_res.audio = NULL;
					}
				}
			}

			pipe_ctx_old->stream_res.tg->funcs->set_blank(pipe_ctx_old->stream_res.tg, true);
			if (!FUNC3(pipe_ctx_old->stream_res.tg)) {
				FUNC2("DC: failed to blank crtc!\n");
				FUNC0();
			}
			pipe_ctx_old->stream_res.tg->funcs->disable_crtc(pipe_ctx_old->stream_res.tg);
			pipe_ctx_old->plane_res.mi->funcs->free_mem_input(
					pipe_ctx_old->plane_res.mi, dc->current_state->stream_count);

			if (old_clk && 0 == FUNC5(&context->res_ctx,
										dc->res_pool,
										old_clk))
				old_clk->funcs->cs_power_down(old_clk);

			dc->hwss.disable_plane(dc, pipe_ctx_old);

			pipe_ctx_old->stream = NULL;
		}
	}
}