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
typedef  scalar_t__ u32 ;
struct xlp9xx_i2c_dev {scalar_t__ ip_clk_hz; scalar_t__ clk_hz; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 scalar_t__ XLP9XX_I2C_DEFAULT_FREQ ; 
 scalar_t__ XLP9XX_I2C_HIGH_FREQ ; 
 scalar_t__ XLP9XX_I2C_IP_CLK_FREQ ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev,
				    struct xlp9xx_i2c_dev *priv)
{
	struct clk *clk;
	u32 freq;
	int err;

	clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(clk)) {
		priv->ip_clk_hz = XLP9XX_I2C_IP_CLK_FREQ;
		FUNC2(&pdev->dev, "using default input frequency %u\n",
			priv->ip_clk_hz);
	} else {
		priv->ip_clk_hz = FUNC1(clk);
	}

	err = FUNC4(&pdev->dev, "clock-frequency", &freq);
	if (err) {
		freq = XLP9XX_I2C_DEFAULT_FREQ;
		FUNC2(&pdev->dev, "using default frequency %u\n", freq);
	} else if (freq == 0 || freq > XLP9XX_I2C_HIGH_FREQ) {
		FUNC3(&pdev->dev, "invalid frequency %u, using default\n",
			 freq);
		freq = XLP9XX_I2C_DEFAULT_FREQ;
	}
	priv->clk_hz = freq;

	return 0;
}