#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct platform_device {int dummy; } ;
struct aspeed_i2c_bus {int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ASPEED_I2C_INTR_CTRL_REG ; 
 scalar_t__ ASPEED_I2C_INTR_STS_REG ; 
 int FUNC0 (struct aspeed_i2c_bus*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct platform_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct aspeed_i2c_bus *bus)
{
	struct platform_device *pdev = FUNC3(bus->dev);
	unsigned long flags;
	int ret;

	FUNC1(&bus->lock, flags);

	/* Disable and ack all interrupts. */
	FUNC4(0, bus->base + ASPEED_I2C_INTR_CTRL_REG);
	FUNC4(0xffffffff, bus->base + ASPEED_I2C_INTR_STS_REG);

	ret = FUNC0(bus, pdev);

	FUNC2(&bus->lock, flags);

	return ret;
}