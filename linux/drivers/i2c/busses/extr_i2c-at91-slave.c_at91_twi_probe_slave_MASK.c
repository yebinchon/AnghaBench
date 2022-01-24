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
typedef  int /*<<< orphan*/  u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * algo; } ;
struct at91_twi_dev {TYPE_1__ adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  at91_twi_algorithm_slave ; 
 int /*<<< orphan*/  atmel_twi_interrupt_slave ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct at91_twi_dev*) ; 

int FUNC3(struct platform_device *pdev,
			 u32 phy_addr, struct at91_twi_dev *dev)
{
	int rc;

	rc = FUNC2(&pdev->dev, dev->irq, atmel_twi_interrupt_slave,
			      0, FUNC1(dev->dev), dev);
	if (rc) {
		FUNC0(dev->dev, "Cannot get irq %d: %d\n", dev->irq, rc);
		return rc;
	}

	dev->adapter.algo = &at91_twi_algorithm_slave;

	return 0;
}