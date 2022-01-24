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
struct mtk_dsi {scalar_t__ refcount; int /*<<< orphan*/  phy; int /*<<< orphan*/  digital_clk; int /*<<< orphan*/  engine_clk; scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VM_DONE_INT_FLAG ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_dsi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct mtk_dsi *dsi)
{
	if (FUNC1(dsi->refcount == 0))
		return;

	if (--dsi->refcount != 0)
		return;

	/*
	 * mtk_dsi_stop() and mtk_dsi_start() is asymmetric, since
	 * mtk_dsi_stop() should be called after mtk_drm_crtc_atomic_disable(),
	 * which needs irq for vblank, and mtk_dsi_stop() will disable irq.
	 * mtk_dsi_start() needs to be called in mtk_output_dsi_enable(),
	 * after dsi is fully set.
	 */
	FUNC8(dsi);

	if (!FUNC9(dsi, VM_DONE_INT_FLAG, 500)) {
		if (dsi->panel) {
			if (FUNC3(dsi->panel)) {
				FUNC0("failed to unprepare the panel\n");
				return;
			}
		}
	}

	FUNC7(dsi);
	FUNC6(dsi);
	FUNC4(dsi);

	FUNC5(dsi);

	FUNC2(dsi->engine_clk);
	FUNC2(dsi->digital_clk);

	FUNC10(dsi->phy);
}