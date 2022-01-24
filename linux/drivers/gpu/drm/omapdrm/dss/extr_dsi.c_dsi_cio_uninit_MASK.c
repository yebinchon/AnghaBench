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
struct dsi_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_CLK_CTRL ; 
 int /*<<< orphan*/  DSI_COMPLEXIO_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct dsi_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dsi_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dsi_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsi_data*) ; 

__attribute__((used)) static void FUNC4(struct dsi_data *dsi)
{
	/* DDR_CLK_ALWAYS_ON */
	FUNC0(dsi, DSI_CLK_CTRL, 0, 13, 13);

	FUNC1(dsi, DSI_COMPLEXIO_POWER_OFF);
	FUNC3(dsi);
	FUNC2(dsi);
}