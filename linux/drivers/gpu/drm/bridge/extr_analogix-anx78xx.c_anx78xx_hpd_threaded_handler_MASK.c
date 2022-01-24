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
struct anx78xx {int /*<<< orphan*/  lock; scalar_t__ powered; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (struct anx78xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct anx78xx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct anx78xx *anx78xx = data;
	int err;

	if (anx78xx->powered)
		return IRQ_HANDLED;

	FUNC3(&anx78xx->lock);

	/* Cable is pulled, power on the chip */
	FUNC2(anx78xx);

	err = FUNC1(anx78xx);
	if (err)
		FUNC0("Failed to enable interrupts: %d\n", err);

	FUNC4(&anx78xx->lock);

	return IRQ_HANDLED;
}