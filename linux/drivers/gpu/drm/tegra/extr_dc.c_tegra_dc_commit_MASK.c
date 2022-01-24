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
struct tegra_dc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CMD_STATE_CONTROL ; 
 int GENERAL_ACT_REQ ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dc*,int,int /*<<< orphan*/ ) ; 

void FUNC1(struct tegra_dc *dc)
{
	FUNC0(dc, GENERAL_ACT_REQ << 8, DC_CMD_STATE_CONTROL);
	FUNC0(dc, GENERAL_ACT_REQ, DC_CMD_STATE_CONTROL);
}