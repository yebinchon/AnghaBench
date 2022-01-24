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
struct qib_devdata {int /*<<< orphan*/  pcidev; TYPE_1__* cspec; int /*<<< orphan*/  revision; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  ChipRevMinor ; 
 int /*<<< orphan*/  GPIO_ERRINTR_MASK ; 
 int /*<<< orphan*/  QIB_DRV_NAME ; 
 int /*<<< orphan*/  Revision_R ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kr_gpio_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_6120intr ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct qib_devdata *dd)
{
	int ret;

	/*
	 * If the chip supports added error indication via GPIO pins,
	 * enable interrupts on those bits so the interrupt routine
	 * can count the events. Also set flag so interrupt routine
	 * can know they are expected.
	 */
	if (FUNC0(dd->revision, Revision_R,
		      ChipRevMinor) > 1) {
		/* Rev2+ reports extra errors via internal GPIO pins */
		dd->cspec->gpio_mask |= GPIO_ERRINTR_MASK;
		FUNC4(dd, kr_gpio_mask, dd->cspec->gpio_mask);
	}

	ret = FUNC2(dd->pcidev, 0, qib_6120intr, NULL, dd,
			      QIB_DRV_NAME);
	if (ret)
		FUNC3(dd,
			    "Couldn't setup interrupt (irq=%d): %d\n",
			    FUNC1(dd->pcidev, 0), ret);
}