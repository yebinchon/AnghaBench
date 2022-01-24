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
struct mtk_dsi {int enabled; scalar_t__ panel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_dsi*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_dsi*) ; 
 int FUNC4 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_dsi*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtk_dsi*) ; 

__attribute__((used)) static void FUNC8(struct mtk_dsi *dsi)
{
	int ret;

	if (dsi->enabled)
		return;

	ret = FUNC4(dsi);
	if (ret < 0) {
		FUNC0("failed to power on dsi\n");
		return;
	}

	FUNC5(dsi);
	FUNC2(dsi, 1);

	FUNC6(dsi);

	if (dsi->panel) {
		if (FUNC1(dsi->panel)) {
			FUNC0("failed to enable the panel\n");
			goto err_dsi_power_off;
		}
	}

	dsi->enabled = true;

	return;
err_dsi_power_off:
	FUNC7(dsi);
	FUNC3(dsi);
}