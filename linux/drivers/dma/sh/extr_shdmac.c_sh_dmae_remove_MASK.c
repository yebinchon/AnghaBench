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
struct dma_device {int dummy; } ;
struct TYPE_2__ {struct dma_device dma_dev; } ;
struct sh_dmae_device {TYPE_1__ shdma_dev; int /*<<< orphan*/  node; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sh_dmae_device* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_dmae_device*) ; 
 int /*<<< orphan*/  sh_dmae_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sh_dmae_device *shdev = FUNC2(pdev);
	struct dma_device *dma_dev = &shdev->shdma_dev.dma_dev;

	FUNC0(dma_dev);

	FUNC6(&sh_dmae_lock);
	FUNC1(&shdev->node);
	FUNC7(&sh_dmae_lock);

	FUNC3(&pdev->dev);

	FUNC4(shdev);
	FUNC5(&shdev->shdma_dev);

	FUNC8();

	return 0;
}