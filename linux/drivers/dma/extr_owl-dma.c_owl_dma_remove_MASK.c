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
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct owl_dma {int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; TYPE_2__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_DMA_IRQ_EN0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct owl_dma*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct owl_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct owl_dma*) ; 
 struct owl_dma* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct owl_dma *od = FUNC6(pdev);

	FUNC4(pdev->dev.of_node);
	FUNC2(&od->dma);

	/* Mask all interrupts for this execution environment */
	FUNC3(od, OWL_DMA_IRQ_EN0, 0x0);

	/* Make sure we won't have any further interrupts */
	FUNC1(od->dma.dev, od->irq, od);

	FUNC5(od);

	FUNC0(od->clk);

	return 0;
}