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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct hidma_dev {TYPE_1__ ddev; int /*<<< orphan*/  lldev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct hidma_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct platform_device *pdev)
{
	struct hidma_dev *dmadev = FUNC3(pdev);

	FUNC0(dmadev->ddev.dev, "HI-DMA engine shutdown\n");

	FUNC4(dmadev->ddev.dev);
	if (FUNC2(dmadev->lldev))
		FUNC1(dmadev->ddev.dev, "channel did not stop\n");
	FUNC5(dmadev->ddev.dev);
	FUNC6(dmadev->ddev.dev);

}