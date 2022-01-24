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
struct fimc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  EXYNOS_CISTATUS ; 
 int EXYNOS_CISTATUS_FRAMEEND ; 
 int FUNC1 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct fimc_context *ctx)
{
	u32 cfg;

	cfg = FUNC1(ctx, EXYNOS_CISTATUS);

	FUNC0(ctx->dev, "cfg[0x%x]\n", cfg);

	if (!(cfg & EXYNOS_CISTATUS_FRAMEEND))
		return false;

	cfg &= ~(EXYNOS_CISTATUS_FRAMEEND);
	FUNC2(ctx, cfg, EXYNOS_CISTATUS);

	return true;
}