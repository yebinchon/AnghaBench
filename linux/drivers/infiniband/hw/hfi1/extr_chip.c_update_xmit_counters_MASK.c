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
typedef  int /*<<< orphan*/  u16 ;
struct hfi1_pportdata {int /*<<< orphan*/  link_speed_active; } ;

/* Variables and functions */
 int C_VL_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hfi1_pportdata *ppd, u16 link_width)
{
	int i;
	u16 tx_width;
	u16 link_speed;

	tx_width = FUNC2(link_width);
	link_speed = FUNC0(ppd->link_speed_active);

	/*
	 * There are C_VL_COUNT number of PortVLXmitWait counters.
	 * Adding 1 to C_VL_COUNT to include the PortXmitWait counter.
	 */
	for (i = 0; i < C_VL_COUNT + 1; i++)
		FUNC1(ppd, tx_width, link_speed, i);
}