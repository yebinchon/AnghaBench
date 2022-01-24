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
struct s3c24xx_i2c {int /*<<< orphan*/  adap; int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct s3c24xx_i2c* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct s3c24xx_i2c*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct s3c24xx_i2c *i2c = FUNC2(pdev);

	FUNC0(i2c->clk);

	FUNC3(&pdev->dev);

	FUNC4(i2c);

	FUNC1(&i2c->adap);

	return 0;
}