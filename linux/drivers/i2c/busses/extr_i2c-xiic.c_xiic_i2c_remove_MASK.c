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
struct xiic_i2c {int /*<<< orphan*/  clk; int /*<<< orphan*/  adap; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xiic_i2c* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xiic_i2c*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct xiic_i2c *i2c = FUNC4(pdev);
	int ret;

	/* remove adapter & data */
	FUNC3(&i2c->adap);

	ret = FUNC1(i2c->clk);
	if (ret) {
		FUNC2(&pdev->dev, "Unable to enable clock.\n");
		return ret;
	}
	FUNC6(i2c);
	FUNC0(i2c->clk);
	FUNC5(&pdev->dev);

	return 0;
}