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
struct sprd_i2c {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  adap; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sprd_i2c* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct sprd_i2c *i2c_dev = FUNC2(pdev);
	int ret;

	ret = FUNC4(i2c_dev->dev);
	if (ret < 0)
		return ret;

	FUNC1(&i2c_dev->adap);
	FUNC0(i2c_dev->clk);

	FUNC5(i2c_dev->dev);
	FUNC3(i2c_dev->dev);

	return 0;
}