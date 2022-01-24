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
struct TYPE_2__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_dmadev {int /*<<< orphan*/  desc_pool; scalar_t__ ll123_supported; int /*<<< orphan*/  legacy; int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQENABLE_L0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,struct omap_dmadev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_dmadev*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_dmadev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_dmadev* FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct omap_dmadev *od = FUNC6(pdev);
	int irq;

	if (pdev->dev.of_node)
		FUNC3(pdev->dev.of_node);

	irq = FUNC7(pdev, 1);
	FUNC0(&pdev->dev, irq, od);

	FUNC1(&od->ddev);

	if (!od->legacy) {
		/* Disable all interrupts */
		FUNC5(od, IRQENABLE_L0, 0);
	}

	if (od->ll123_supported)
		FUNC2(od->desc_pool);

	FUNC4(od);

	return 0;
}