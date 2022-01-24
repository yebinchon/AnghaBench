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
struct rcar_i2c_priv {int flags; int /*<<< orphan*/  adap; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ID_P_PM_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rcar_i2c_priv* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_i2c_priv*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rcar_i2c_priv *priv = FUNC1(pdev);
	struct device *dev = &pdev->dev;

	FUNC0(&priv->adap);
	FUNC4(priv);
	if (priv->flags & ID_P_PM_BLOCKED)
		FUNC3(dev);
	FUNC2(dev);

	return 0;
}