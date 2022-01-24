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
struct tegra_dsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_PAD_CONTROL_0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_dsi*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tegra_dsi *dsi)
{
	u32 value;

	value = FUNC1(0) | FUNC0(0);
	FUNC2(dsi, value, DSI_PAD_CONTROL_0);

	return 0;
}