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
struct cdns_dsi {int /*<<< orphan*/  direct_cmd_comp; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DIRECT_CMD_STS_CTL ; 
 scalar_t__ DIRECT_CMD_STS_FLAG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct cdns_dsi *dsi = data;
	irqreturn_t ret = IRQ_NONE;
	u32 flag, ctl;

	flag = FUNC1(dsi->regs + DIRECT_CMD_STS_FLAG);
	if (flag) {
		ctl = FUNC1(dsi->regs + DIRECT_CMD_STS_CTL);
		ctl &= ~flag;
		FUNC2(ctl, dsi->regs + DIRECT_CMD_STS_CTL);
		FUNC0(&dsi->direct_cmd_comp);
		ret = IRQ_HANDLED;
	}

	return ret;
}