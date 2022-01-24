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
struct mcif_wb {int dummy; } ;
struct dcn20_mmhubbub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCIF_WB_BUFMGR_ENABLE ; 
 int /*<<< orphan*/  MCIF_WB_BUFMGR_SW_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dcn20_mmhubbub* FUNC1 (struct mcif_wb*) ; 

void FUNC2(struct mcif_wb *mcif_wb)
{
	struct dcn20_mmhubbub *mcif_wb20 = FUNC1(mcif_wb);

	/* Enable Mcifwb */
	FUNC0(MCIF_WB_BUFMGR_SW_CONTROL, MCIF_WB_BUFMGR_ENABLE, 1);
}