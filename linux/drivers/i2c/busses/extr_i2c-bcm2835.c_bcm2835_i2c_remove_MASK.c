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
struct clk {int dummy; } ;
struct bcm2835_i2c_dev {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bcm2835_i2c_dev* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct bcm2835_i2c_dev *i2c_dev = FUNC5(pdev);
	struct clk *bus_clk = FUNC2(i2c_dev->dev, "div");

	FUNC1(bus_clk);
	FUNC0(bus_clk);

	FUNC3(i2c_dev->irq, i2c_dev);
	FUNC4(&i2c_dev->adapter);

	return 0;
}