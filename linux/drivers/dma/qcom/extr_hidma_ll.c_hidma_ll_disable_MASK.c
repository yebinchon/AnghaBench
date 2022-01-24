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
struct hidma_lldev {scalar_t__ evca; scalar_t__ evch_state; scalar_t__ trch_state; scalar_t__ trca; } ;

/* Variables and functions */
 int HIDMA_CH_CONTROL_MASK ; 
 scalar_t__ FUNC0 (int) ; 
 int HIDMA_CH_SUSPEND ; 
 scalar_t__ HIDMA_CH_SUSPENDED ; 
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ; 
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ; 
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ; 
 int /*<<< orphan*/  FUNC1 (struct hidma_lldev*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

int FUNC5(struct hidma_lldev *lldev)
{
	u32 val;
	int ret;

	/* The channel needs to be in working state */
	if (!FUNC1(lldev))
		return 0;

	val = FUNC2(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
	val &= ~(HIDMA_CH_CONTROL_MASK << 16);
	val |= HIDMA_CH_SUSPEND << 16;
	FUNC4(val, lldev->trca + HIDMA_TRCA_CTRLSTS_REG);

	/*
	 * Start the wait right after the suspend is confirmed.
	 * Do a polled read up to 1ms and 10ms maximum.
	 */
	ret = FUNC3(lldev->trca + HIDMA_TRCA_CTRLSTS_REG, val,
				 FUNC0(val) == HIDMA_CH_SUSPENDED,
				 1000, 10000);
	if (ret)
		return ret;

	val = FUNC2(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
	val &= ~(HIDMA_CH_CONTROL_MASK << 16);
	val |= HIDMA_CH_SUSPEND << 16;
	FUNC4(val, lldev->evca + HIDMA_EVCA_CTRLSTS_REG);

	/*
	 * Start the wait right after the suspend is confirmed
	 * Delay up to 10ms after reset to allow DMA logic to quiesce.
	 */
	ret = FUNC3(lldev->evca + HIDMA_EVCA_CTRLSTS_REG, val,
				 FUNC0(val) == HIDMA_CH_SUSPENDED,
				 1000, 10000);
	if (ret)
		return ret;

	lldev->trch_state = HIDMA_CH_SUSPENDED;
	lldev->evch_state = HIDMA_CH_SUSPENDED;

	/* disable interrupts */
	FUNC4(0, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
	return 0;
}