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
typedef  int uint32_t ;
struct resource_pool {int /*<<< orphan*/ ** dwbc; TYPE_1__* res_cap; } ;
struct dcn20_dwbc {int /*<<< orphan*/  base; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int num_dwb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dcn20_dwbc*,struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  dwbc20_mask ; 
 int /*<<< orphan*/ * dwbc20_regs ; 
 int /*<<< orphan*/  dwbc20_shift ; 
 struct dcn20_dwbc* FUNC3 (int,int /*<<< orphan*/ ) ; 

bool FUNC4(struct dc_context *ctx, struct resource_pool *pool)
{
	int i;
	uint32_t pipe_count = pool->res_cap->num_dwb;

	FUNC0(pipe_count > 0);

	for (i = 0; i < pipe_count; i++) {
		struct dcn20_dwbc *dwbc20 = FUNC3(sizeof(struct dcn20_dwbc),
						    GFP_KERNEL);

		if (!dwbc20) {
			FUNC2("DC: failed to create dwbc20!\n");
			return false;
		}
		FUNC1(dwbc20, ctx,
				&dwbc20_regs[i],
				&dwbc20_shift,
				&dwbc20_mask,
				i);
		pool->dwbc[i] = &dwbc20->base;
	}
	return true;
}