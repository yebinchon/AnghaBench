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
struct at_xdmac_chan {int /*<<< orphan*/  chan; int /*<<< orphan*/  tasklet; } ;
struct TYPE_4__ {int chancnt; } ;
struct at_xdmac {struct at_xdmac_chan* chan; TYPE_2__ dma; int /*<<< orphan*/  irq; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct at_xdmac*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct at_xdmac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct at_xdmac	*atxdmac = (struct at_xdmac *)FUNC6(pdev);
	int		i;

	FUNC1(atxdmac);
	FUNC5(pdev->dev.of_node);
	FUNC3(&atxdmac->dma);
	FUNC2(atxdmac->clk);

	FUNC4(atxdmac->irq, atxdmac);

	for (i = 0; i < atxdmac->dma.chancnt; i++) {
		struct at_xdmac_chan *atchan = &atxdmac->chan[i];

		FUNC7(&atchan->tasklet);
		FUNC0(&atchan->chan);
	}

	return 0;
}