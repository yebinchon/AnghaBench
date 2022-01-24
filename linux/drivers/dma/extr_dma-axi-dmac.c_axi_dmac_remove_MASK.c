#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  task; } ;
struct TYPE_6__ {TYPE_2__ vchan; } ;
struct axi_dmac {int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_dev; TYPE_3__ chan; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct axi_dmac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct axi_dmac* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct axi_dmac *dmac = FUNC4(pdev);

	FUNC3(pdev->dev.of_node);
	FUNC2(dmac->irq, dmac);
	FUNC5(&dmac->chan.vchan.task);
	FUNC1(&dmac->dma_dev);
	FUNC0(dmac->clk);

	return 0;
}