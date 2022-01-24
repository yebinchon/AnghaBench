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
struct fimc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS_CIFCNTSEQ ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL ; 
 int EXYNOS_CIGCTRL_SWRST ; 
 int /*<<< orphan*/  EXYNOS_CIIMGCPT ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ; 
 int /*<<< orphan*/  EXYNOS_CISRCFMT ; 
 int EXYNOS_CISRCFMT_ITU601_8BIT ; 
 int /*<<< orphan*/  EXYNOS_CISTATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXYNOS_MSCTRL ; 
 int EXYNOS_MSCTRL_ENVID ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fimc_context *ctx)
{
	u32 cfg;

	/* stop dma operation */
	cfg = FUNC2(ctx, EXYNOS_CISTATUS);
	if (FUNC0(cfg))
		FUNC1(ctx, EXYNOS_MSCTRL, EXYNOS_MSCTRL_ENVID);

	FUNC3(ctx, EXYNOS_CISRCFMT, EXYNOS_CISRCFMT_ITU601_8BIT);

	/* disable image capture */
	FUNC1(ctx, EXYNOS_CIIMGCPT,
		EXYNOS_CIIMGCPT_IMGCPTEN_SC | EXYNOS_CIIMGCPT_IMGCPTEN);

	/* s/w reset */
	FUNC3(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_SWRST);

	/* s/w reset complete */
	FUNC1(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_SWRST);

	/* reset sequence */
	FUNC4(ctx, 0x0, EXYNOS_CIFCNTSEQ);
}