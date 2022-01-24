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
struct dw_i2c_dev {int /*<<< orphan*/  rst; int /*<<< orphan*/  (* disable ) (struct dw_i2c_dev*) ;int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dw_i2c_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_i2c_dev*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct dw_i2c_dev *dev = FUNC2(pdev);

	FUNC4(&pdev->dev);

	FUNC1(&dev->adapter);

	dev->disable(dev);

	FUNC3(&pdev->dev);
	FUNC5(&pdev->dev);
	FUNC0(dev);

	FUNC6(dev->rst);

	return 0;
}