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
struct fimc_context {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EXYNOS_CISTATUS ; 
 int EXYNOS_CISTATUS_OVFICB ; 
 int EXYNOS_CISTATUS_OVFICR ; 
 int EXYNOS_CISTATUS_OVFIY ; 
 int /*<<< orphan*/  EXYNOS_CIWDOFST ; 
 int EXYNOS_CIWDOFST_CLROVFICB ; 
 int EXYNOS_CIWDOFST_CLROVFICR ; 
 int EXYNOS_CIWDOFST_CLROVFIY ; 
 int FUNC2 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(struct fimc_context *ctx)
{
	u32 status, flag;

	status = FUNC2(ctx, EXYNOS_CISTATUS);
	flag = EXYNOS_CISTATUS_OVFIY | EXYNOS_CISTATUS_OVFICB |
		EXYNOS_CISTATUS_OVFICR;

	FUNC0(ctx->dev, "flag[0x%x]\n", flag);

	if (status & flag) {
		FUNC3(ctx, EXYNOS_CIWDOFST,
			EXYNOS_CIWDOFST_CLROVFIY | EXYNOS_CIWDOFST_CLROVFICB |
			EXYNOS_CIWDOFST_CLROVFICR);

		FUNC1(ctx->dev,
			      "occurred overflow at %d, status 0x%x.\n",
			      ctx->id, status);
		return true;
	}

	return false;
}