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
struct resource_pool {int /*<<< orphan*/ ** mcif_wb; TYPE_1__* res_cap; } ;
struct dcn20_mmhubbub {int /*<<< orphan*/  base; } ;
struct dc_context {int dummy; } ;
struct TYPE_2__ {int num_dwb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dcn20_mmhubbub*,struct dc_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dcn20_mmhubbub* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcif_wb20_mask ; 
 int /*<<< orphan*/ * mcif_wb20_regs ; 
 int /*<<< orphan*/  mcif_wb20_shift ; 

bool FUNC4(struct dc_context *ctx, struct resource_pool *pool)
{
	int i;
	uint32_t pipe_count = pool->res_cap->num_dwb;

	FUNC0(pipe_count > 0);

	for (i = 0; i < pipe_count; i++) {
		struct dcn20_mmhubbub *mcif_wb20 = FUNC3(sizeof(struct dcn20_mmhubbub),
						    GFP_KERNEL);

		if (!mcif_wb20) {
			FUNC2("DC: failed to create mcif_wb20!\n");
			return false;
		}

		FUNC1(mcif_wb20, ctx,
				&mcif_wb20_regs[i],
				&mcif_wb20_shift,
				&mcif_wb20_mask,
				i);

		pool->mcif_wb[i] = &mcif_wb20->base;
	}
	return true;
}