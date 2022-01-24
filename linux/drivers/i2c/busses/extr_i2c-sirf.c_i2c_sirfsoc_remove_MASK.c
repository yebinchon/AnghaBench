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
struct sirfsoc_i2c {int /*<<< orphan*/  clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;
struct i2c_adapter {struct sirfsoc_i2c* algo_data; } ;

/* Variables and functions */
 scalar_t__ SIRFSOC_I2C_CTRL ; 
 int /*<<< orphan*/  SIRFSOC_I2C_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct i2c_adapter *adapter = FUNC3(pdev);
	struct sirfsoc_i2c *siic = adapter->algo_data;

	FUNC4(SIRFSOC_I2C_RESET, siic->base + SIRFSOC_I2C_CTRL);
	FUNC2(adapter);
	FUNC1(siic->clk);
	FUNC0(siic->clk);
	return 0;
}