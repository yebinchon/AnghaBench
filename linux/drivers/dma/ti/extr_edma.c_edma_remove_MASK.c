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
struct edma_cc {int /*<<< orphan*/  dummy_slot; int /*<<< orphan*/ * dma_memcpy; int /*<<< orphan*/  dma_slave; int /*<<< orphan*/  ccerrint; int /*<<< orphan*/  ccint; } ;

/* Variables and functions */
 struct edma_cc* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,struct edma_cc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct edma_cc *ecc = FUNC0(dev);

	FUNC1(dev, ecc->ccint, ecc);
	FUNC1(dev, ecc->ccerrint, ecc);

	FUNC3(&ecc->dma_slave);

	if (dev->of_node)
		FUNC5(dev->of_node);
	FUNC2(&ecc->dma_slave);
	if (ecc->dma_memcpy)
		FUNC2(ecc->dma_memcpy);
	FUNC4(ecc, ecc->dummy_slot);

	return 0;
}