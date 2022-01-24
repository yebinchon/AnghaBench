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
struct tpci200_board {int /*<<< orphan*/  mutex; TYPE_1__* slots; } ;
struct slot_irq {int dummy; } ;
struct ipack_device {size_t slot; } ;
struct TYPE_2__ {struct slot_irq* irq; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (struct slot_irq*,int /*<<< orphan*/ *) ; 
 struct tpci200_board* FUNC1 (struct ipack_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct slot_irq*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct tpci200_board*,size_t) ; 

__attribute__((used)) static int FUNC7(struct ipack_device *dev)
{
	struct slot_irq *slot_irq;
	struct tpci200_board *tpci200;

	tpci200 = FUNC1(dev);
	if (tpci200 == NULL)
		return -EINVAL;

	if (FUNC3(&tpci200->mutex))
		return -ERESTARTSYS;

	if (tpci200->slots[dev->slot].irq == NULL) {
		FUNC4(&tpci200->mutex);
		return -EINVAL;
	}

	FUNC6(tpci200, dev->slot);
	slot_irq = tpci200->slots[dev->slot].irq;
	/* uninstall handler */
	FUNC0(tpci200->slots[dev->slot].irq, NULL);
	FUNC5();
	FUNC2(slot_irq);
	FUNC4(&tpci200->mutex);
	return 0;
}