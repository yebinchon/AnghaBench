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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct omap_i2c_dev {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_I2C_CON_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct omap_i2c_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct omap_i2c_dev	*omap = FUNC2(pdev);
	int ret;

	FUNC0(&omap->adapter);
	ret = FUNC5(&pdev->dev);
	if (ret < 0)
		return ret;

	FUNC1(omap, OMAP_I2C_CON_REG, 0);
	FUNC4(&pdev->dev);
	FUNC6(&pdev->dev);
	FUNC3(&pdev->dev);
	return 0;
}