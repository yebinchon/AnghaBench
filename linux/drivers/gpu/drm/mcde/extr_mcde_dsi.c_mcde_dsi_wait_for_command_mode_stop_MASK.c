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
struct mcde_dsi {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ DSI_CMD_MODE_STS ; 
 int DSI_CMD_MODE_STS_CSM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct mcde_dsi *d)
{
	u32 val;
	int i;

	/*
	 * Wait until we get out of command mode
	 * CSM = Command State Machine
	 */
	i = 0;
	val = DSI_CMD_MODE_STS_CSM_RUNNING;
	while ((FUNC1(d->regs + DSI_CMD_MODE_STS) & val) == val) {
		/* Sleep for a millisecond */
		FUNC2(1000, 2000);
		if (i++ == 100) {
			FUNC0(d->dev,
				 "could not get out of command mode\n");
			return;
		}
	}
}