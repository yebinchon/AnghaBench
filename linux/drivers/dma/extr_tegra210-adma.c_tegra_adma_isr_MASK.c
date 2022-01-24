#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct tegra_adma_chan {TYPE_2__ vc; TYPE_1__* desc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (struct tegra_adma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct tegra_adma_chan *tdc = dev_id;
	unsigned long status;
	unsigned long flags;

	FUNC0(&tdc->vc.lock, flags);

	status = FUNC2(tdc);
	if (status == 0 || !tdc->desc) {
		FUNC1(&tdc->vc.lock, flags);
		return IRQ_NONE;
	}

	FUNC3(&tdc->desc->vd);

	FUNC1(&tdc->vc.lock, flags);

	return IRQ_HANDLED;
}