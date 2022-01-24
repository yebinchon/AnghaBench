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
struct msm_gpu {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS ; 
 int A5XX_RBBM_INT_0_MASK_CP_HW_ERROR ; 
 int A5XX_RBBM_INT_0_MASK_CP_SW ; 
 int A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP ; 
 int A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT ; 
 int A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR ; 
 int A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int RBBM_ERROR_MASK ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_INT_0_STATUS ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_INT_CLEAR_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*) ; 
 int FUNC7 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*) ; 

__attribute__((used)) static irqreturn_t FUNC10(struct msm_gpu *gpu)
{
	u32 status = FUNC7(gpu, REG_A5XX_RBBM_INT_0_STATUS);

	/*
	 * Clear all the interrupts except RBBM_AHB_ERROR - if we clear it
	 * before the source is cleared the interrupt will storm.
	 */
	FUNC8(gpu, REG_A5XX_RBBM_INT_CLEAR_CMD,
		status & ~A5XX_RBBM_INT_0_MASK_RBBM_AHB_ERROR);

	/* Pass status to a5xx_rbbm_err_irq because we've already cleared it */
	if (status & RBBM_ERROR_MASK)
		FUNC5(gpu, status);

	if (status & A5XX_RBBM_INT_0_MASK_CP_HW_ERROR)
		FUNC0(gpu);

	if (status & A5XX_RBBM_INT_0_MASK_MISC_HANG_DETECT)
		FUNC1(gpu);

	if (status & A5XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS)
		FUNC6(gpu);

	if (status & A5XX_RBBM_INT_0_MASK_GPMU_VOLTAGE_DROOP)
		FUNC2(gpu);

	if (status & A5XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS) {
		FUNC4(gpu);
		FUNC9(gpu);
	}

	if (status & A5XX_RBBM_INT_0_MASK_CP_SW)
		FUNC3(gpu);

	return IRQ_HANDLED;
}