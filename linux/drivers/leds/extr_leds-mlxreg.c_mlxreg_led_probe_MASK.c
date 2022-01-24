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
struct mlxreg_led_priv_data {struct mlxreg_core_platform_data* pdata; struct platform_device* pdev; int /*<<< orphan*/  access_lock; } ;
struct mlxreg_core_platform_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct mlxreg_core_platform_data* FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlxreg_led_priv_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxreg_led_priv_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct mlxreg_core_platform_data *led_pdata;
	struct mlxreg_led_priv_data *priv;

	led_pdata = FUNC1(&pdev->dev);
	if (!led_pdata) {
		FUNC0(&pdev->dev, "Failed to get platform data.\n");
		return -EINVAL;
	}

	priv = FUNC2(&pdev->dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC4(&priv->access_lock);
	priv->pdev = pdev;
	priv->pdata = led_pdata;

	return FUNC3(priv);
}