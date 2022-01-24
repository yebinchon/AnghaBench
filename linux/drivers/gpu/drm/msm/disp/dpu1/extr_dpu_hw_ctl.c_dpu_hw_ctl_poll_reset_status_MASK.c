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
typedef  int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {struct dpu_hw_blk_reg_map hw; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_SW_RESET ; 
 int FUNC0 (struct dpu_hw_blk_reg_map*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static u32 FUNC5(struct dpu_hw_ctl *ctx, u32 timeout_us)
{
	struct dpu_hw_blk_reg_map *c = &ctx->hw;
	ktime_t timeout;
	u32 status;

	timeout = FUNC1(FUNC3(), timeout_us);

	/*
	 * it takes around 30us to have mdp finish resetting its ctl path
	 * poll every 50us so that reset should be completed at 1st poll
	 */
	do {
		status = FUNC0(c, CTL_SW_RESET);
		status &= 0x1;
		if (status)
			FUNC4(20, 50);
	} while (status && FUNC2(FUNC3(), timeout) < 0);

	return status;
}