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
struct ade_hw_ctx {int power_on; int /*<<< orphan*/  ade_core_clk; int /*<<< orphan*/  reset; int /*<<< orphan*/  media_noc_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ade_hw_ctx*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ade_hw_ctx *ctx)
{
	int ret;

	ret = FUNC2(ctx->media_noc_clk);
	if (ret) {
		FUNC0("failed to enable media_noc_clk (%d)\n", ret);
		return ret;
	}

	ret = FUNC3(ctx->reset);
	if (ret) {
		FUNC0("failed to deassert reset\n");
		return ret;
	}

	ret = FUNC2(ctx->ade_core_clk);
	if (ret) {
		FUNC0("failed to enable ade_core_clk (%d)\n", ret);
		return ret;
	}

	FUNC1(ctx);
	ctx->power_on = true;
	return 0;
}