#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct msm_gpu {TYPE_1__* dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int A2XX_MASTER_INT_SIGNAL_CP_INT_STAT ; 
 int A2XX_MASTER_INT_SIGNAL_MH_INT_STAT ; 
 int A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT ; 
 int AXXX_CP_INT_CNTL_RB_INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_A2XX_MASTER_INT_SIGNAL ; 
 int /*<<< orphan*/  REG_A2XX_MH_INTERRUPT_CLEAR ; 
 int /*<<< orphan*/  REG_A2XX_MH_INTERRUPT_STATUS ; 
 int /*<<< orphan*/  REG_A2XX_MH_MMU_PAGE_FAULT ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_INT_ACK ; 
 int /*<<< orphan*/  REG_A2XX_RBBM_INT_STATUS ; 
 int /*<<< orphan*/  REG_AXXX_CP_INT_ACK ; 
 int /*<<< orphan*/  REG_AXXX_CP_INT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*) ; 

__attribute__((used)) static irqreturn_t FUNC4(struct msm_gpu *gpu)
{
	uint32_t mstatus, status;

	mstatus = FUNC1(gpu, REG_A2XX_MASTER_INT_SIGNAL);

	if (mstatus & A2XX_MASTER_INT_SIGNAL_MH_INT_STAT) {
		status = FUNC1(gpu, REG_A2XX_MH_INTERRUPT_STATUS);

		FUNC0(gpu->dev->dev, "MH_INT: %08X\n", status);
		FUNC0(gpu->dev->dev, "MMU_PAGE_FAULT: %08X\n",
			FUNC1(gpu, REG_A2XX_MH_MMU_PAGE_FAULT));

		FUNC2(gpu, REG_A2XX_MH_INTERRUPT_CLEAR, status);
	}

	if (mstatus & A2XX_MASTER_INT_SIGNAL_CP_INT_STAT) {
		status = FUNC1(gpu, REG_AXXX_CP_INT_STATUS);

		/* only RB_INT is expected */
		if (status & ~AXXX_CP_INT_CNTL_RB_INT_MASK)
			FUNC0(gpu->dev->dev, "CP_INT: %08X\n", status);

		FUNC2(gpu, REG_AXXX_CP_INT_ACK, status);
	}

	if (mstatus & A2XX_MASTER_INT_SIGNAL_RBBM_INT_STAT) {
		status = FUNC1(gpu, REG_A2XX_RBBM_INT_STATUS);

		FUNC0(gpu->dev->dev, "RBBM_INT: %08X\n", status);

		FUNC2(gpu, REG_A2XX_RBBM_INT_ACK, status);
	}

	FUNC3(gpu);

	return IRQ_HANDLED;
}