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
typedef  int /*<<< orphan*/  u32 ;
struct fimc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL_CAM_JPEG ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fimc_context *ctx, bool enable)
{
	u32 cfg;

	FUNC0(ctx->dev, "enable[%d]\n", enable);

	cfg = FUNC1(ctx, EXYNOS_CIGCTRL);
	if (enable)
		cfg |= EXYNOS_CIGCTRL_CAM_JPEG;
	else
		cfg &= ~EXYNOS_CIGCTRL_CAM_JPEG;

	FUNC2(ctx, cfg, EXYNOS_CIGCTRL);
}