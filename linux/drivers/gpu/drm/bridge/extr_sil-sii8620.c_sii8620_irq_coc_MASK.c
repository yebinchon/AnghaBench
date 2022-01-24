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
typedef  int u8 ;
struct sii8620 {int dummy; } ;

/* Variables and functions */
 int BIT_COC_CALIBRATION_DONE ; 
 int BIT_COC_STAT_0_PLL_LOCKED ; 
 int BIT_TDM_INTR_SYNC_DATA ; 
 int BIT_TDM_INTR_SYNC_WAIT ; 
 int MSK_COC_STAT_0_FSM_STATE ; 
 int /*<<< orphan*/  REG_COC_CTLB ; 
 int /*<<< orphan*/  REG_COC_INTR ; 
 int /*<<< orphan*/  REG_COC_STAT_0 ; 
 int /*<<< orphan*/  REG_TRXINTMH ; 
 int FUNC0 (struct sii8620*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sii8620*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sii8620*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct sii8620 *ctx)
{
	u8 stat = FUNC0(ctx, REG_COC_INTR);

	if (stat & BIT_COC_CALIBRATION_DONE) {
		u8 cstat = FUNC0(ctx, REG_COC_STAT_0);

		cstat &= BIT_COC_STAT_0_PLL_LOCKED | MSK_COC_STAT_0_FSM_STATE;
		if (cstat == (BIT_COC_STAT_0_PLL_LOCKED | 0x02)) {
			FUNC2(ctx,
				REG_COC_CTLB, 0,
				REG_TRXINTMH, BIT_TDM_INTR_SYNC_DATA
					      | BIT_TDM_INTR_SYNC_WAIT
			);
		}
	}

	FUNC1(ctx, REG_COC_INTR, stat);
}