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
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc_dma {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; int /*<<< orphan*/  irq2; scalar_t__ is_mpc8308; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 struct mpc_dma* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mpc_dma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	struct device *dev = &op->dev;
	struct mpc_dma *mdma = FUNC0(dev);

	if (dev->of_node)
		FUNC4(dev->of_node);
	FUNC1(&mdma->dma);
	if (mdma->is_mpc8308) {
		FUNC2(mdma->irq2, mdma);
		FUNC3(mdma->irq2);
	}
	FUNC2(mdma->irq, mdma);
	FUNC3(mdma->irq);
	FUNC5(&mdma->tasklet);

	return 0;
}