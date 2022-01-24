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
struct sirfsoc_dma {int /*<<< orphan*/  irq; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dma; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 struct sirfsoc_dma* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sirfsoc_dma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *op)
{
	struct device *dev = &op->dev;
	struct sirfsoc_dma *sdma = FUNC0(dev);

	FUNC4(op->dev.of_node);
	FUNC1(&sdma->dma);
	FUNC2(sdma->irq, sdma);
	FUNC8(&sdma->tasklet);
	FUNC3(sdma->irq);
	FUNC5(&op->dev);
	if (!FUNC6(&op->dev))
		FUNC7(&op->dev);

	return 0;
}