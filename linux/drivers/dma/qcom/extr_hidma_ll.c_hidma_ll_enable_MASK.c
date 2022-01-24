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
struct hidma_lldev {scalar_t__ evca; void* evch_state; void* trch_state; int /*<<< orphan*/  dev; scalar_t__ trca; } ;

/* Variables and functions */
 int ENABLE_IRQS ; 
 int HIDMA_CH_CONTROL_MASK ; 
 int HIDMA_CH_ENABLE ; 
 void* HIDMA_CH_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ HIDMA_EVCA_CTRLSTS_REG ; 
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ; 
 scalar_t__ HIDMA_TRCA_CTRLSTS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(struct hidma_lldev *lldev)
{
	u32 val;
	int ret;

	val = FUNC3(lldev->evca + HIDMA_EVCA_CTRLSTS_REG);
	val &= ~(HIDMA_CH_CONTROL_MASK << 16);
	val |= HIDMA_CH_ENABLE << 16;
	FUNC5(val, lldev->evca + HIDMA_EVCA_CTRLSTS_REG);

	ret = FUNC4(lldev->evca + HIDMA_EVCA_CTRLSTS_REG, val,
				 FUNC2(FUNC0(val)),
				 1000, 10000);
	if (ret) {
		FUNC1(lldev->dev, "event channel did not get enabled\n");
		return ret;
	}

	val = FUNC3(lldev->trca + HIDMA_TRCA_CTRLSTS_REG);
	val &= ~(HIDMA_CH_CONTROL_MASK << 16);
	val |= HIDMA_CH_ENABLE << 16;
	FUNC5(val, lldev->trca + HIDMA_TRCA_CTRLSTS_REG);

	ret = FUNC4(lldev->trca + HIDMA_TRCA_CTRLSTS_REG, val,
				 FUNC2(FUNC0(val)),
				 1000, 10000);
	if (ret) {
		FUNC1(lldev->dev, "transfer channel did not get enabled\n");
		return ret;
	}

	lldev->trch_state = HIDMA_CH_ENABLED;
	lldev->evch_state = HIDMA_CH_ENABLED;

	/* enable irqs */
	FUNC5(ENABLE_IRQS, lldev->evca + HIDMA_EVCA_IRQ_EN_REG);

	return 0;
}