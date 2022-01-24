#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct hidma_dev {TYPE_1__* lldev; int /*<<< orphan*/  task; int /*<<< orphan*/  irq; TYPE_2__ ddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  msi_support; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hidma_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hidma_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hidma_dev*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct hidma_dev*) ; 
 struct hidma_dev* FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct hidma_dev *dmadev = FUNC8(pdev);

	FUNC10(dmadev->ddev.dev);
	FUNC2(&dmadev->ddev);
	if (!dmadev->lldev->msi_support)
		FUNC1(dmadev->ddev.dev, dmadev->irq, dmadev->lldev);
	else
		FUNC5(dmadev);

	FUNC12(&dmadev->task);
	FUNC7(dmadev);
	FUNC3(dmadev);
	FUNC6(dmadev->lldev);
	FUNC4(dmadev);

	FUNC0(&pdev->dev, "HI-DMA engine removed\n");
	FUNC11(&pdev->dev);
	FUNC9(&pdev->dev);

	return 0;
}