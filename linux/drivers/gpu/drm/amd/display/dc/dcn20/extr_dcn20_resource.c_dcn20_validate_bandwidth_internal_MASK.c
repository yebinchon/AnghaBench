#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t num_states; } ;
struct TYPE_10__ {TYPE_3__ soc; int /*<<< orphan*/ * ValidationStatus; } ;
struct TYPE_11__ {TYPE_4__ vba; } ;
struct TYPE_12__ {TYPE_5__ dml; } ;
struct dc_state {TYPE_6__ bw_ctx; } ;
struct dc {TYPE_2__* ctx; TYPE_1__* res_pool; } ;
typedef  int /*<<< orphan*/  display_e2e_pipe_params_st ;
struct TYPE_8__ {int /*<<< orphan*/  logger; } ;
struct TYPE_7__ {int pipe_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_PIPES ; 
 int /*<<< orphan*/  FUNC8 (struct dc*,struct dc_state*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dc*,struct dc_state*,int /*<<< orphan*/ *,int*,int*,int) ; 
 int FUNC10 (struct dc*,struct dc_state*,int /*<<< orphan*/ *,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fail ; 
 int /*<<< orphan*/  fast ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC14(struct dc *dc, struct dc_state *context,
		bool fast_validate)
{
	bool out = false;

	FUNC4();

	int vlevel = 0;
	int pipe_split_from[MAX_PIPES];
	int pipe_cnt = 0;
	display_e2e_pipe_params_st *pipes = FUNC13(dc->res_pool->pipe_count * sizeof(display_e2e_pipe_params_st), GFP_KERNEL);
	FUNC6(dc->ctx->logger);

	FUNC0();

	out = FUNC10(dc, context, pipes, &pipe_cnt, pipe_split_from, &vlevel);

	if (pipe_cnt == 0)
		goto validate_out;

	if (!out)
		goto validate_fail;

	FUNC1();

	if (fast_validate) {
		FUNC5(fast);
		goto validate_out;
	}

	FUNC9(dc, context, pipes, &pipe_cnt, pipe_split_from, vlevel);
	FUNC8(dc, context, pipes, pipe_cnt, vlevel);

	FUNC2();

	goto validate_out;

validate_fail:
	FUNC7("Mode Validation Warning: %s failed validation.\n",
		FUNC11(context->bw_ctx.dml.vba.ValidationStatus[context->bw_ctx.dml.vba.soc.num_states]));

	FUNC5(fail);
	out = false;

validate_out:
	FUNC12(pipes);

	FUNC3();

	return out;
}