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
struct fimc_scaler {int hratio; int vratio; scalar_t__ up_v; scalar_t__ up_h; scalar_t__ bypass; scalar_t__ range; } ;
struct fimc_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  EXYNOS_CIEXTEN ; 
 int FUNC1 (int) ; 
 int EXYNOS_CIEXTEN_MAINHORRATIO_EXT_MASK ; 
 int FUNC2 (int) ; 
 int EXYNOS_CIEXTEN_MAINVERRATIO_EXT_MASK ; 
 int /*<<< orphan*/  EXYNOS_CISCCTRL ; 
 int EXYNOS_CISCCTRL_CSCR2Y_WIDE ; 
 int EXYNOS_CISCCTRL_CSCY2R_WIDE ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int EXYNOS_CISCCTRL_MAIN_H_RATIO_MASK ; 
 int EXYNOS_CISCCTRL_MAIN_V_RATIO_MASK ; 
 int EXYNOS_CISCCTRL_SCALERBYPASS ; 
 int EXYNOS_CISCCTRL_SCALEUP_H ; 
 int EXYNOS_CISCCTRL_SCALEUP_V ; 
 int FUNC5 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fimc_context *ctx, struct fimc_scaler *sc)
{
	u32 cfg, cfg_ext;

	FUNC0(ctx->dev, "range[%d]bypass[%d]up_h[%d]up_v[%d]\n",
			  sc->range, sc->bypass, sc->up_h, sc->up_v);
	FUNC0(ctx->dev, "hratio[%d]vratio[%d]\n",
			  sc->hratio, sc->vratio);

	cfg = FUNC5(ctx, EXYNOS_CISCCTRL);
	cfg &= ~(EXYNOS_CISCCTRL_SCALERBYPASS |
		EXYNOS_CISCCTRL_SCALEUP_H | EXYNOS_CISCCTRL_SCALEUP_V |
		EXYNOS_CISCCTRL_MAIN_V_RATIO_MASK |
		EXYNOS_CISCCTRL_MAIN_H_RATIO_MASK |
		EXYNOS_CISCCTRL_CSCR2Y_WIDE |
		EXYNOS_CISCCTRL_CSCY2R_WIDE);

	if (sc->range)
		cfg |= (EXYNOS_CISCCTRL_CSCR2Y_WIDE |
			EXYNOS_CISCCTRL_CSCY2R_WIDE);
	if (sc->bypass)
		cfg |= EXYNOS_CISCCTRL_SCALERBYPASS;
	if (sc->up_h)
		cfg |= EXYNOS_CISCCTRL_SCALEUP_H;
	if (sc->up_v)
		cfg |= EXYNOS_CISCCTRL_SCALEUP_V;

	cfg |= (FUNC3((sc->hratio >> 6)) |
		FUNC4((sc->vratio >> 6)));
	FUNC6(ctx, cfg, EXYNOS_CISCCTRL);

	cfg_ext = FUNC5(ctx, EXYNOS_CIEXTEN);
	cfg_ext &= ~EXYNOS_CIEXTEN_MAINHORRATIO_EXT_MASK;
	cfg_ext &= ~EXYNOS_CIEXTEN_MAINVERRATIO_EXT_MASK;
	cfg_ext |= (FUNC1(sc->hratio) |
		FUNC2(sc->vratio));
	FUNC6(ctx, cfg_ext, EXYNOS_CIEXTEN);
}