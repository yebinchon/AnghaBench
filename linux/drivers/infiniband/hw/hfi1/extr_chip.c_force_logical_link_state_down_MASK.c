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
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_LCB_CFG_ALLOW_LINK_UP ; 
 int /*<<< orphan*/  DC_LCB_CFG_CNT_FOR_SKIP_STALL ; 
 int /*<<< orphan*/  DC_LCB_CFG_IGNORE_LOST_RCLK ; 
 int DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK ; 
 int /*<<< orphan*/  DC_LCB_CFG_LANE_WIDTH ; 
 int /*<<< orphan*/  DC_LCB_CFG_LOOPBACK ; 
 int /*<<< orphan*/  DC_LCB_CFG_REINIT_AS_SLAVE ; 
 int /*<<< orphan*/  DC_LCB_CFG_RUN ; 
 unsigned long long DC_LCB_CFG_RUN_EN_SHIFT ; 
 int /*<<< orphan*/  DC_LCB_CFG_TX_FIFOS_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;

	/*
	 * Bring link up in LCB loopback
	 */
	FUNC4(dd, DC_LCB_CFG_TX_FIFOS_RESET, 1);
	FUNC4(dd, DC_LCB_CFG_IGNORE_LOST_RCLK,
		  DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK);

	FUNC4(dd, DC_LCB_CFG_LANE_WIDTH, 0);
	FUNC4(dd, DC_LCB_CFG_REINIT_AS_SLAVE, 0);
	FUNC4(dd, DC_LCB_CFG_CNT_FOR_SKIP_STALL, 0x110);
	FUNC4(dd, DC_LCB_CFG_LOOPBACK, 0x2);

	FUNC4(dd, DC_LCB_CFG_TX_FIFOS_RESET, 0);
	(void)FUNC1(dd, DC_LCB_CFG_TX_FIFOS_RESET);
	FUNC2(3);
	FUNC4(dd, DC_LCB_CFG_ALLOW_LINK_UP, 1);
	FUNC4(dd, DC_LCB_CFG_RUN, 1ull << DC_LCB_CFG_RUN_EN_SHIFT);

	FUNC3(dd, 100);

	/*
	 * Bring the link down again.
	 */
	FUNC4(dd, DC_LCB_CFG_TX_FIFOS_RESET, 1);
	FUNC4(dd, DC_LCB_CFG_ALLOW_LINK_UP, 0);
	FUNC4(dd, DC_LCB_CFG_IGNORE_LOST_RCLK, 0);

	FUNC0(ppd->dd, "logical state forced to LINK_DOWN\n");
}