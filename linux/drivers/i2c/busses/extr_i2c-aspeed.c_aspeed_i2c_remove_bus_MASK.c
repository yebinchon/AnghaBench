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
struct aspeed_i2c_bus {int /*<<< orphan*/  adap; int /*<<< orphan*/  rst; int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ASPEED_I2C_FUN_CTRL_REG ; 
 scalar_t__ ASPEED_I2C_INTR_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct aspeed_i2c_bus* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct aspeed_i2c_bus *bus = FUNC1(pdev);
	unsigned long flags;

	FUNC3(&bus->lock, flags);

	/* Disable everything. */
	FUNC5(0, bus->base + ASPEED_I2C_FUN_CTRL_REG);
	FUNC5(0, bus->base + ASPEED_I2C_INTR_CTRL_REG);

	FUNC4(&bus->lock, flags);

	FUNC2(bus->rst);

	FUNC0(&bus->adap);

	return 0;
}