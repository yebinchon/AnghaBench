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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int dummy; } ;
struct kempld_i2c_data {int /*<<< orphan*/  adap; int /*<<< orphan*/  was_active; struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_CTRL_EN ; 
 int /*<<< orphan*/  KEMPLD_I2C_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kempld_device_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kempld_i2c_data* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct kempld_i2c_data *i2c = FUNC5(pdev);
	struct kempld_device_data *pld = i2c->pld;
	u8 ctrl;

	FUNC1(pld);
	/*
	 * Disable I2C logic if it was not activated before the
	 * driver loaded
	 */
	if (!i2c->was_active) {
		ctrl = FUNC2(pld, KEMPLD_I2C_CTRL);
		ctrl &= ~I2C_CTRL_EN;
		FUNC4(pld, KEMPLD_I2C_CTRL, ctrl);
	}
	FUNC3(pld);

	FUNC0(&i2c->adap);

	return 0;
}