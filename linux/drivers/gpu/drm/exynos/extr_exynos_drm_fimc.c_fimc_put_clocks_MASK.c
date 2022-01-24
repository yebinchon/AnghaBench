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
struct fimc_context {int /*<<< orphan*/ * clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FIMC_CLKS_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fimc_context *ctx)
{
	int i;

	for (i = 0; i < FIMC_CLKS_MAX; i++) {
		if (FUNC1(ctx->clocks[i]))
			continue;
		FUNC2(ctx->clocks[i]);
		ctx->clocks[i] = FUNC0(-EINVAL);
	}
}