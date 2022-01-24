#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dcn_hubbub_wm_set {int /*<<< orphan*/  dram_clk_chanage; int /*<<< orphan*/  sr_exit; int /*<<< orphan*/  sr_enter; int /*<<< orphan*/  pte_meta_urgent; int /*<<< orphan*/  data_urgent; int /*<<< orphan*/  wm_set; } ;
struct dcn_hubbub_wm {struct dcn_hubbub_wm_set* sets; } ;
struct dc_log_buffer_ctx {int dummy; } ;
struct dc_context {int dummy; } ;
struct dc {TYPE_2__* res_pool; struct dc_context* ctx; } ;
struct TYPE_6__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {TYPE_3__* hubbub; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* wm_read_state ) (TYPE_3__*,struct dcn_hubbub_wm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn_hubbub_wm*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct dcn_hubbub_wm*) ; 

void FUNC4(struct dc *dc, struct dc_log_buffer_ctx *log_ctx)
{
	struct dc_context *dc_ctx = dc->ctx;
	struct dcn_hubbub_wm wm;
	int i;

	FUNC2(&wm, 0, sizeof(struct dcn_hubbub_wm));
	dc->res_pool->hubbub->funcs->wm_read_state(dc->res_pool->hubbub, &wm);

	FUNC0("HUBBUB WM:      data_urgent  pte_meta_urgent"
			"         sr_enter          sr_exit  dram_clk_change\n");

	for (i = 0; i < 4; i++) {
		struct dcn_hubbub_wm_set *s;

		s = &wm.sets[i];
		FUNC0("WM_Set[%d]:", s->wm_set);
		FUNC1(s->data_urgent);
		FUNC1(s->pte_meta_urgent);
		FUNC1(s->sr_enter);
		FUNC1(s->sr_exit);
		FUNC1(s->dram_clk_chanage);
		FUNC0("\n");
	}

	FUNC0("\n");
}