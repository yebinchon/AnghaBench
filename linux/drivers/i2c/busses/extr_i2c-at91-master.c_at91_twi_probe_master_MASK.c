#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * quirks; int /*<<< orphan*/ * algo; } ;
struct at91_twi_dev {TYPE_1__ adapter; int /*<<< orphan*/  fifo_size; TYPE_3__* dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  cmd_complete; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct at91_twi_dev*) ; 
 int /*<<< orphan*/  at91_twi_algorithm ; 
 int FUNC1 (struct at91_twi_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at91_twi_quirks ; 
 int /*<<< orphan*/  atmel_twi_interrupt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at91_twi_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

int FUNC8(struct platform_device *pdev,
			  u32 phy_addr, struct at91_twi_dev *dev)
{
	int rc;

	FUNC6(&dev->cmd_complete);

	rc = FUNC5(&pdev->dev, dev->irq, atmel_twi_interrupt, 0,
			      FUNC4(dev->dev), dev);
	if (rc) {
		FUNC2(dev->dev, "Cannot get irq %d: %d\n", dev->irq, rc);
		return rc;
	}

	if (dev->dev->of_node) {
		rc = FUNC1(dev, phy_addr);
		if (rc == -EPROBE_DEFER)
			return rc;
	}

	if (!FUNC7(pdev->dev.of_node, "atmel,fifo-size",
				  &dev->fifo_size)) {
		FUNC3(dev->dev, "Using FIFO (%u data)\n", dev->fifo_size);
	}

	FUNC0(dev);

	dev->adapter.algo = &at91_twi_algorithm;
	dev->adapter.quirks = &at91_twi_quirks;

	return 0;
}