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
struct tegra_dsi {int /*<<< orphan*/  mipi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PAD_CONTROL_0 ; 
 int /*<<< orphan*/  DSI_PAD_CONTROL_1 ; 
 int /*<<< orphan*/  DSI_PAD_CONTROL_2 ; 
 int /*<<< orphan*/  DSI_PAD_CONTROL_3 ; 
 int /*<<< orphan*/  DSI_PAD_CONTROL_4 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct tegra_dsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct tegra_dsi*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct tegra_dsi *dsi)
{
	u32 value;

	/*
	 * XXX Is this still needed? The module reset is deasserted right
	 * before this function is called.
	 */
	FUNC10(dsi, 0, DSI_PAD_CONTROL_0);
	FUNC10(dsi, 0, DSI_PAD_CONTROL_1);
	FUNC10(dsi, 0, DSI_PAD_CONTROL_2);
	FUNC10(dsi, 0, DSI_PAD_CONTROL_3);
	FUNC10(dsi, 0, DSI_PAD_CONTROL_4);

	/* start calibration */
	FUNC9(dsi);

	value = FUNC8(0x7) | FUNC7(0x7) |
		FUNC1(0x1) | FUNC0(0x1) |
		FUNC2(0x0);
	FUNC10(dsi, value, DSI_PAD_CONTROL_2);

	value = FUNC4(0x3) | FUNC6(0x3) |
		FUNC3(0x03) | FUNC5(0x3);
	FUNC10(dsi, value, DSI_PAD_CONTROL_3);

	return FUNC11(dsi->mipi);
}