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
struct stm32f7_i2c_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  adap; int /*<<< orphan*/ * dma; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct stm32f7_i2c_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct stm32f7_i2c_dev *i2c_dev = FUNC2(pdev);

	if (i2c_dev->dma) {
		FUNC8(i2c_dev->dma);
		i2c_dev->dma = NULL;
	}

	FUNC1(&i2c_dev->adap);
	FUNC5(i2c_dev->dev);

	FUNC0(i2c_dev->clk);

	FUNC6(i2c_dev->dev);
	FUNC3(i2c_dev->dev);
	FUNC7(i2c_dev->dev);
	FUNC4(i2c_dev->dev);

	return 0;
}