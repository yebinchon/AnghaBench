#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct imx_i2c_struct {int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_change_nb; scalar_t__ dma; TYPE_1__ adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_I2C_I2CR ; 
 int /*<<< orphan*/  IMX_I2C_I2SR ; 
 int /*<<< orphan*/  IMX_I2C_IADR ; 
 int /*<<< orphan*/  IMX_I2C_IFDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_i2c_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct imx_i2c_struct*,int /*<<< orphan*/ ) ; 
 struct imx_i2c_struct* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct imx_i2c_struct *i2c_imx = FUNC6(pdev);
	int ret;

	ret = FUNC8(&pdev->dev);
	if (ret < 0)
		return ret;

	/* remove adapter */
	FUNC2(&i2c_imx->adapter.dev, "adapter removed\n");
	FUNC3(&i2c_imx->adapter);

	if (i2c_imx->dma)
		FUNC4(i2c_imx);

	/* setup chip registers to defaults */
	FUNC5(0, i2c_imx, IMX_I2C_IADR);
	FUNC5(0, i2c_imx, IMX_I2C_IFDR);
	FUNC5(0, i2c_imx, IMX_I2C_I2CR);
	FUNC5(0, i2c_imx, IMX_I2C_I2SR);

	FUNC1(i2c_imx->clk, &i2c_imx->clk_change_nb);
	FUNC0(i2c_imx->clk);

	FUNC9(&pdev->dev);
	FUNC7(&pdev->dev);

	return 0;
}