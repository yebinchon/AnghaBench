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
struct tegra_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_GANGED_MODE_CONTROL ; 
 int /*<<< orphan*/  DSI_GANGED_MODE_SIZE ; 
 int /*<<< orphan*/  DSI_GANGED_MODE_START ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_dsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct tegra_dsi *dsi)
{
	FUNC0(dsi, 0, DSI_GANGED_MODE_START);
	FUNC0(dsi, 0, DSI_GANGED_MODE_SIZE);
	FUNC0(dsi, 0, DSI_GANGED_MODE_CONTROL);
}