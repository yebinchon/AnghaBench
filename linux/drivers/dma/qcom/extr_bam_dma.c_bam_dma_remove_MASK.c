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
typedef  size_t u32 ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct bam_device {size_t num_channels; int /*<<< orphan*/  bamclk; int /*<<< orphan*/  task; TYPE_2__* channels; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  common; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; int /*<<< orphan*/  chan; } ;
struct TYPE_5__ {int /*<<< orphan*/  fifo_phys; int /*<<< orphan*/  fifo_virt; TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAM_DESC_FIFO_SIZE ; 
 int /*<<< orphan*/  BAM_IRQ_SRCS_MSK_EE ; 
 int /*<<< orphan*/  FUNC0 (struct bam_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bam_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct bam_device* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct bam_device *bdev = FUNC7(pdev);
	u32 i;

	FUNC8(&pdev->dev);

	FUNC6(pdev->dev.of_node);
	FUNC4(&bdev->common);

	/* mask all interrupts for this execution environment */
	FUNC10(0, FUNC0(bdev, 0,  BAM_IRQ_SRCS_MSK_EE));

	FUNC3(bdev->dev, bdev->irq, bdev);

	for (i = 0; i < bdev->num_channels; i++) {
		FUNC1(&bdev->channels[i].vc.chan);
		FUNC9(&bdev->channels[i].vc.task);

		if (!bdev->channels[i].fifo_virt)
			continue;

		FUNC5(bdev->dev, BAM_DESC_FIFO_SIZE,
			    bdev->channels[i].fifo_virt,
			    bdev->channels[i].fifo_phys);
	}

	FUNC9(&bdev->task);

	FUNC2(bdev->bamclk);

	return 0;
}