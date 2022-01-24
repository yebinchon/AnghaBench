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
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct nbpf_device {int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; struct nbpf_device* chan; TYPE_1__* config; int /*<<< orphan*/  eirq; } ;
struct nbpf_channel {int /*<<< orphan*/  clk; int /*<<< orphan*/  dma_dev; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; struct nbpf_channel* chan; TYPE_1__* config; int /*<<< orphan*/  eirq; } ;
struct TYPE_3__ {int num_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,struct nbpf_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct nbpf_device* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct nbpf_device *nbpf = FUNC4(pdev);
	int i;

	FUNC1(&pdev->dev, nbpf->eirq, nbpf);

	for (i = 0; i < nbpf->config->num_channels; i++) {
		struct nbpf_channel *chan = nbpf->chan + i;

		FUNC1(&pdev->dev, chan->irq, chan);

		FUNC5(&chan->tasklet);
	}

	FUNC3(pdev->dev.of_node);
	FUNC2(&nbpf->dma_dev);
	FUNC0(nbpf->clk);

	return 0;
}