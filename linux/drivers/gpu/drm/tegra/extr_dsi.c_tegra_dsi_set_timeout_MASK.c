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
struct tegra_dsi {struct tegra_dsi* slave; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSI_TIMEOUT_0 ; 
 int /*<<< orphan*/  DSI_TIMEOUT_1 ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  DSI_TO_TALLY ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_dsi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct tegra_dsi *dsi, unsigned long bclk,
				  unsigned int vrefresh)
{
	unsigned int timeout;
	u32 value;

	/* one frame high-speed transmission timeout */
	timeout = (bclk / vrefresh) / 512;
	value = FUNC4(0x2000) | FUNC3(timeout);
	FUNC7(dsi, value, DSI_TIMEOUT_0);

	/* 2 ms peripheral timeout for panel */
	timeout = 2 * bclk / 512 * 1000;
	value = FUNC5(timeout) | FUNC6(0x2000);
	FUNC7(dsi, value, DSI_TIMEOUT_1);

	value = FUNC2(0) | FUNC1(0) | FUNC0(0);
	FUNC7(dsi, value, DSI_TO_TALLY);

	if (dsi->slave)
		FUNC8(dsi->slave, bclk, vrefresh);
}