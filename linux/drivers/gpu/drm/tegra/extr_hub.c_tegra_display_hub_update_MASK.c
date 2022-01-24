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
struct tegra_dc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int COMMON_ACTREQ ; 
 int COMMON_UPDATE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DC_CMD_IHUB_COMMON_MISC_CTL ; 
 int /*<<< orphan*/  DC_CMD_STATE_CONTROL ; 
 int /*<<< orphan*/  DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER ; 
 int LATENCY_EVENT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tegra_dc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tegra_dc *dc)
{
	u32 value;

	FUNC2(dc->dev);

	value = FUNC4(dc, DC_CMD_IHUB_COMMON_MISC_CTL);
	value &= ~LATENCY_EVENT;
	FUNC5(dc, value, DC_CMD_IHUB_COMMON_MISC_CTL);

	value = FUNC4(dc, DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER);
	value = FUNC0(1) | FUNC1(1);
	FUNC5(dc, value, DC_DISP_IHUB_COMMON_DISPLAY_FETCH_METER);

	FUNC5(dc, COMMON_UPDATE, DC_CMD_STATE_CONTROL);
	FUNC4(dc, DC_CMD_STATE_CONTROL);
	FUNC5(dc, COMMON_ACTREQ, DC_CMD_STATE_CONTROL);
	FUNC4(dc, DC_CMD_STATE_CONTROL);

	FUNC3(dc->dev);
}