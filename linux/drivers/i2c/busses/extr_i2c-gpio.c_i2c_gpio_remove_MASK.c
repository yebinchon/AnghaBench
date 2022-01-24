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
struct platform_device {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct i2c_gpio_private_data {struct i2c_adapter adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 struct i2c_gpio_private_data* FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct i2c_gpio_private_data *priv;
	struct i2c_adapter *adap;

	FUNC1(pdev);

	priv = FUNC2(pdev);
	adap = &priv->adap;

	FUNC0(adap);

	return 0;
}