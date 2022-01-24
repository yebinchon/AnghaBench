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
struct vc4_dsi {int /*<<< orphan*/  xfer_result; int /*<<< orphan*/  xfer_completion; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DSI1_INT_ERR_CONTROL ; 
 int DSI1_INT_ERR_CONT_LP0 ; 
 int DSI1_INT_ERR_CONT_LP1 ; 
 int DSI1_INT_ERR_SYNC_ESC ; 
 int DSI1_INT_HSTX_TO ; 
 int DSI1_INT_LPRX_TO ; 
 int DSI1_INT_PHY_DIR_RTF ; 
 int DSI1_INT_PR_TO ; 
 int DSI1_INT_TA_TO ; 
 int DSI1_INT_TXPKT1_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  INT_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vc4_dsi*,int /*<<< orphan*/ *,int,int,char*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct vc4_dsi *dsi = data;
	u32 stat = FUNC0(INT_STAT);
	irqreturn_t ret = IRQ_NONE;

	FUNC1(INT_STAT, stat);

	FUNC3(dsi, &ret, stat,
			 DSI1_INT_ERR_SYNC_ESC, "LPDT sync");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_ERR_CONTROL, "data lane 0 sequence");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_ERR_CONT_LP0, "LP0 contention");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_ERR_CONT_LP1, "LP1 contention");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_HSTX_TO, "HSTX timeout");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_LPRX_TO, "LPRX timeout");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_TA_TO, "turnaround timeout");
	FUNC3(dsi, &ret, stat,
			 DSI1_INT_PR_TO, "peripheral reset timeout");

	if (stat & (DSI1_INT_TXPKT1_DONE | DSI1_INT_PHY_DIR_RTF)) {
		FUNC2(&dsi->xfer_completion);
		ret = IRQ_HANDLED;
	} else if (stat & DSI1_INT_HSTX_TO) {
		FUNC2(&dsi->xfer_completion);
		dsi->xfer_result = -ETIMEDOUT;
		ret = IRQ_HANDLED;
	}

	return ret;
}