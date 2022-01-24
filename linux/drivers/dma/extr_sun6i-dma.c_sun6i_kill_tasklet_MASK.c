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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  task; int /*<<< orphan*/  irq; TYPE_1__ slave; int /*<<< orphan*/  tasklet_shutdown; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct sun6i_dma_dev *sdev)
{
	/* Disable all interrupts from DMA */
	FUNC4(0, sdev->base + FUNC0(0));
	FUNC4(0, sdev->base + FUNC0(1));

	/* Prevent spurious interrupts from scheduling the tasklet */
	FUNC1(&sdev->tasklet_shutdown);

	/* Make sure we won't have any further interrupts */
	FUNC2(sdev->slave.dev, sdev->irq, sdev);

	/* Actually prevent the tasklet from being scheduled */
	FUNC3(&sdev->task);
}