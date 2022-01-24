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
struct mcde_dsi {int /*<<< orphan*/  prcmu; int /*<<< orphan*/  bridge_out; scalar_t__ panel; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCM_DSI_SW_RESET ; 
 int /*<<< orphan*/  PRCM_DSI_SW_RESET_DSI0_SW_RESETN ; 
 struct mcde_dsi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			    void *data)
{
	struct mcde_dsi *d = FUNC0(dev);

	if (d->panel)
		FUNC1(d->bridge_out);
	FUNC2(d->prcmu, PRCM_DSI_SW_RESET,
			   PRCM_DSI_SW_RESET_DSI0_SW_RESETN, 0);
}