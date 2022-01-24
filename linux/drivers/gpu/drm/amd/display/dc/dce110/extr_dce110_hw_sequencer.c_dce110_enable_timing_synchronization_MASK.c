#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* tg; } ;
struct pipe_ctx {TYPE_2__ stream_res; } ;
struct dcp_gsl_params {scalar_t__ gsl_group; int /*<<< orphan*/  gsl_master; int /*<<< orphan*/  member_0; } ;
struct dc_context {int dummy; } ;
struct dc {struct dc_context* ctx; } ;
struct TYPE_10__ {TYPE_1__* funcs; int /*<<< orphan*/  inst; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* tear_down_global_swap_lock ) (TYPE_3__*) ;int /*<<< orphan*/  (* disable_reset_trigger ) (TYPE_3__*) ;int /*<<< orphan*/  (* enable_reset_trigger ) (TYPE_3__*,scalar_t__) ;int /*<<< orphan*/  (* setup_global_swap_lock ) (TYPE_3__*,struct dcp_gsl_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct dcp_gsl_params*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_context*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(
		struct dc *dc,
		int group_index,
		int group_size,
		struct pipe_ctx *grouped_pipes[])
{
	struct dc_context *dc_ctx = dc->ctx;
	struct dcp_gsl_params gsl_params = { 0 };
	int i;

	FUNC0("GSL: Setting-up...\n");

	/* Designate a single TG in the group as a master.
	 * Since HW doesn't care which one, we always assign
	 * the 1st one in the group. */
	gsl_params.gsl_group = 0;
	gsl_params.gsl_master = grouped_pipes[0]->stream_res.tg->inst;

	for (i = 0; i < group_size; i++)
		grouped_pipes[i]->stream_res.tg->funcs->setup_global_swap_lock(
					grouped_pipes[i]->stream_res.tg, &gsl_params);

	/* Reset slave controllers on master VSync */
	FUNC0("GSL: enabling trigger-reset\n");

	for (i = 1 /* skip the master */; i < group_size; i++)
		grouped_pipes[i]->stream_res.tg->funcs->enable_reset_trigger(
				grouped_pipes[i]->stream_res.tg,
				gsl_params.gsl_group);

	for (i = 1 /* skip the master */; i < group_size; i++) {
		FUNC0("GSL: waiting for reset to occur.\n");
		FUNC5(dc_ctx, grouped_pipes[i]->stream_res.tg);
		grouped_pipes[i]->stream_res.tg->funcs->disable_reset_trigger(
				grouped_pipes[i]->stream_res.tg);
	}

	/* GSL Vblank synchronization is a one time sync mechanism, assumption
	 * is that the sync'ed displays will not drift out of sync over time*/
	FUNC0("GSL: Restoring register states.\n");
	for (i = 0; i < group_size; i++)
		grouped_pipes[i]->stream_res.tg->funcs->tear_down_global_swap_lock(grouped_pipes[i]->stream_res.tg);

	FUNC0("GSL: Set-up complete.\n");
}