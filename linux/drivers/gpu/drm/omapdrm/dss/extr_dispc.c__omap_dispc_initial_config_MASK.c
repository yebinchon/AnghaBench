#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct dispc_device {TYPE_1__* feat; int /*<<< orphan*/  core_clk_rate; } ;
struct TYPE_2__ {scalar_t__ mstandby_workaround; scalar_t__ has_gamma_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPC_CONFIG ; 
 int /*<<< orphan*/  DISPC_DIVISOR ; 
 int /*<<< orphan*/  DISPC_MSTANDBY_CTRL ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_FUNCGATED ; 
 int /*<<< orphan*/  FEAT_MFLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  OMAP_DSS_LOAD_FRAME_ONLY ; 
 int /*<<< orphan*/  FUNC1 (struct dispc_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dispc_device*) ; 
 scalar_t__ FUNC4 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dispc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dispc_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct dispc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct dispc_device *dispc)
{
	u32 l;

	/* Exclusively enable DISPC_CORE_CLK and set divider to 1 */
	if (FUNC4(dispc, FEAT_CORE_CLK_DIV)) {
		l = FUNC8(dispc, DISPC_DIVISOR);
		/* Use DISPC_DIVISOR.LCD, instead of DISPC_DIVISOR1.LCD */
		l = FUNC0(l, 1, 0, 0);
		l = FUNC0(l, 1, 23, 16);
		FUNC11(dispc, DISPC_DIVISOR, l);

		dispc->core_clk_rate = FUNC3(dispc);
	}

	/* Use gamma table mode, instead of palette mode */
	if (dispc->feat->has_gamma_table)
		FUNC1(dispc, DISPC_CONFIG, 1, 3, 3);

	/* For older DSS versions (FEAT_FUNCGATED) this enables
	 * func-clock auto-gating. For newer versions
	 * (dispc->feat->has_gamma_table) this enables tv-out gamma tables.
	 */
	if (FUNC4(dispc, FEAT_FUNCGATED) ||
	    dispc->feat->has_gamma_table)
		FUNC1(dispc, DISPC_CONFIG, 1, 9, 9);

	FUNC10(dispc);

	FUNC9(dispc, OMAP_DSS_LOAD_FRAME_ONLY);

	FUNC5(dispc);

	FUNC2(dispc);

	FUNC7(dispc);

	if (dispc->feat->mstandby_workaround)
		FUNC1(dispc, DISPC_MSTANDBY_CTRL, 1, 0, 0);

	if (FUNC4(dispc, FEAT_MFLAG))
		FUNC6(dispc);
}