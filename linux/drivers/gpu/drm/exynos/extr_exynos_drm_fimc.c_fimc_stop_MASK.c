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
struct fimc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS_CIFCNTSEQ ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL_IRQ_END_DISABLE ; 
 int /*<<< orphan*/  EXYNOS_CIIMGCPT ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ; 
 int /*<<< orphan*/  EXYNOS_CISCCTRL ; 
 int EXYNOS_CISCCTRL_SCALERSTART ; 
 int /*<<< orphan*/  EXYNOS_MSCTRL ; 
 int EXYNOS_MSCTRL_ENVID ; 
 int EXYNOS_MSCTRL_INPUT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*,int) ; 
 int FUNC2 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fimc_context *ctx)
{
	u32 cfg;

	/* Source clear */
	cfg = FUNC2(ctx, EXYNOS_MSCTRL);
	cfg &= ~EXYNOS_MSCTRL_INPUT_MASK;
	cfg &= ~EXYNOS_MSCTRL_ENVID;
	FUNC4(ctx, cfg, EXYNOS_MSCTRL);

	FUNC1(ctx, false);

	/* reset sequence */
	FUNC4(ctx, 0x0, EXYNOS_CIFCNTSEQ);

	/* Scaler disable */
	FUNC0(ctx, EXYNOS_CISCCTRL, EXYNOS_CISCCTRL_SCALERSTART);

	/* Disable image capture */
	FUNC0(ctx, EXYNOS_CIIMGCPT,
		EXYNOS_CIIMGCPT_IMGCPTEN_SC | EXYNOS_CIIMGCPT_IMGCPTEN);

	/* Enable frame end irq */
	FUNC3(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_IRQ_END_DISABLE);
}