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
struct mpc_i2c {int /*<<< orphan*/  base; scalar_t__ irq; scalar_t__ clk_per; int /*<<< orphan*/  adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mpc_i2c*) ; 
 struct mpc_i2c* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *op)
{
	struct mpc_i2c *i2c = FUNC6(op);

	FUNC2(&i2c->adap);

	if (i2c->clk_per)
		FUNC0(i2c->clk_per);

	if (i2c->irq)
		FUNC1(i2c->irq, i2c);

	FUNC4(i2c->irq);
	FUNC3(i2c->base);
	FUNC5(i2c);
	return 0;
}