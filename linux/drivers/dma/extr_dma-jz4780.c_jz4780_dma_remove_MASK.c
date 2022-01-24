#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct jz4780_dma_dev {TYPE_4__* chan; TYPE_2__* soc_data; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  task; } ;
struct TYPE_8__ {TYPE_3__ vchan; } ;
struct TYPE_6__ {int nb_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct jz4780_dma_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct jz4780_dma_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct jz4780_dma_dev *jzdma = FUNC2(pdev);
	int i;

	FUNC1(pdev->dev.of_node);

	FUNC0(jzdma->irq, jzdma);

	for (i = 0; i < jzdma->soc_data->nb_channels; i++)
		FUNC3(&jzdma->chan[i].vchan.task);

	return 0;
}