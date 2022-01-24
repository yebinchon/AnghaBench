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
struct hidma_lldev {scalar_t__ evca; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ HIDMA_EVCA_IRQ_EN_REG ; 
 scalar_t__ HIDMA_EVCA_IRQ_STAT_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct hidma_lldev*,int) ; 
 int FUNC1 (scalar_t__) ; 

irqreturn_t FUNC2(int chirq, void *arg)
{
	struct hidma_lldev *lldev = arg;
	u32 status;
	u32 enable;
	u32 cause;

	status = FUNC1(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
	enable = FUNC1(lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
	cause = status & enable;

	while (cause) {
		FUNC0(lldev, cause);

		/*
		 * Another interrupt might have arrived while we are
		 * processing this one. Read the new cause.
		 */
		status = FUNC1(lldev->evca + HIDMA_EVCA_IRQ_STAT_REG);
		enable = FUNC1(lldev->evca + HIDMA_EVCA_IRQ_EN_REG);
		cause = status & enable;
	}

	return IRQ_HANDLED;
}