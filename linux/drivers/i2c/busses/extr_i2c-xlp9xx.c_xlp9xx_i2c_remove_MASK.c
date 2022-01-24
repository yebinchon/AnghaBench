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
struct xlp9xx_i2c_dev {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLP9XX_I2C_CTRL ; 
 int /*<<< orphan*/  XLP9XX_I2C_INTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xlp9xx_i2c_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xlp9xx_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct xlp9xx_i2c_dev *priv;

	priv = FUNC1(pdev);
	FUNC3(priv, XLP9XX_I2C_INTEN, 0);
	FUNC2(priv->irq);
	FUNC0(&priv->adapter);
	FUNC3(priv, XLP9XX_I2C_CTRL, 0);

	return 0;
}