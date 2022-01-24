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
struct timing_generator {TYPE_1__* funcs; } ;
struct resource_pool {int timing_generator_count; struct timing_generator** timing_generators; } ;
struct dcn_otg_state {int otg_enabled; int /*<<< orphan*/  member_0; } ;
struct dc {struct resource_pool* res_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clear_optc_underflow ) (struct timing_generator*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dcn_otg_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct timing_generator*) ; 

__attribute__((used)) static void FUNC3(struct dc *dc)
{
	struct resource_pool *pool = dc->res_pool;
	int i;

	for (i = 0; i < pool->timing_generator_count; i++) {
		struct timing_generator *tg = pool->timing_generators[i];
		struct dcn_otg_state s = {0};

		FUNC1(FUNC0(tg), &s);

		if (s.otg_enabled & 1)
			tg->funcs->clear_optc_underflow(tg);
	}
}