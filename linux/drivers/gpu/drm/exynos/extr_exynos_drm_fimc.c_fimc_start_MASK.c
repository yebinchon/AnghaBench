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
struct fimc_context {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXYNOS_CIGCTRL ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL_IRQ_END_DISABLE ; 
 int /*<<< orphan*/  EXYNOS_CIIMGCPT ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN ; 
 int EXYNOS_CIIMGCPT_IMGCPTEN_SC ; 
 int /*<<< orphan*/  EXYNOS_CIOCTRL ; 
 int /*<<< orphan*/  EXYNOS_CIOCTRL_WEAVE_MASK ; 
 int /*<<< orphan*/  EXYNOS_CISCCTRL ; 
 int EXYNOS_CISCCTRL_PROGRESSIVE ; 
 int EXYNOS_CISCCTRL_SCALERSTART ; 
 int EXYNOS_CISCCTRL_SCAN_MASK ; 
 int /*<<< orphan*/  EXYNOS_CISTATUS ; 
 int /*<<< orphan*/  EXYNOS_MSCTRL ; 
 int /*<<< orphan*/  EXYNOS_MSCTRL_ENVID ; 
 int EXYNOS_MSCTRL_INPUT_MASK ; 
 int EXYNOS_MSCTRL_INPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fimc_context*,int) ; 
 int FUNC4 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fimc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct fimc_context *ctx)
{
	u32 cfg0, cfg1;

	FUNC3(ctx, true);

	/* If set true, we can save jpeg about screen */
	FUNC1(ctx, false);
	FUNC6(ctx, &ctx->sc);

	FUNC7(ctx);
	FUNC2(ctx, false);

	/* setup dma */
	cfg0 = FUNC4(ctx, EXYNOS_MSCTRL);
	cfg0 &= ~EXYNOS_MSCTRL_INPUT_MASK;
	cfg0 |= EXYNOS_MSCTRL_INPUT_MEMORY;
	FUNC8(ctx, cfg0, EXYNOS_MSCTRL);

	/* Reset status */
	FUNC8(ctx, 0x0, EXYNOS_CISTATUS);

	cfg0 = FUNC4(ctx, EXYNOS_CIIMGCPT);
	cfg0 &= ~EXYNOS_CIIMGCPT_IMGCPTEN_SC;
	cfg0 |= EXYNOS_CIIMGCPT_IMGCPTEN_SC;

	/* Scaler */
	cfg1 = FUNC4(ctx, EXYNOS_CISCCTRL);
	cfg1 &= ~EXYNOS_CISCCTRL_SCAN_MASK;
	cfg1 |= (EXYNOS_CISCCTRL_PROGRESSIVE |
		EXYNOS_CISCCTRL_SCALERSTART);

	FUNC8(ctx, cfg1, EXYNOS_CISCCTRL);

	/* Enable image capture*/
	cfg0 |= EXYNOS_CIIMGCPT_IMGCPTEN;
	FUNC8(ctx, cfg0, EXYNOS_CIIMGCPT);

	/* Disable frame end irq */
	FUNC0(ctx, EXYNOS_CIGCTRL, EXYNOS_CIGCTRL_IRQ_END_DISABLE);

	FUNC0(ctx, EXYNOS_CIOCTRL, EXYNOS_CIOCTRL_WEAVE_MASK);

	FUNC5(ctx, EXYNOS_MSCTRL, EXYNOS_MSCTRL_ENVID);
}