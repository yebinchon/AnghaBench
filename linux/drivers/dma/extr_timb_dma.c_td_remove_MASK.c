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
struct timb_dma {int /*<<< orphan*/  membase; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  dma; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,struct timb_dma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timb_dma*) ; 
 struct timb_dma* FUNC5 (struct platform_device*) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct timb_dma *td = FUNC5(pdev);
	struct resource *iomem = FUNC7(pdev, IORESOURCE_MEM, 0);
	int irq = FUNC6(pdev, 0);

	FUNC1(&td->dma);
	FUNC2(irq, td);
	FUNC10(&td->tasklet);
	FUNC3(td->membase);
	FUNC4(td);
	FUNC8(iomem->start, FUNC9(iomem));

	FUNC0(&pdev->dev, "Removed...\n");
	return 0;
}