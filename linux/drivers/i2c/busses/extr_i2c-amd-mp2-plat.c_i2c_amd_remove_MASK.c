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
struct amd_i2c_common {int /*<<< orphan*/ * mp2_dev; } ;
struct amd_i2c_dev {int /*<<< orphan*/  adap; struct amd_i2c_common common; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_LOCK_ROOT_ADAPTER ; 
 int /*<<< orphan*/  FUNC0 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amd_i2c_dev* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct amd_i2c_dev *i2c_dev = FUNC5(pdev);
	struct amd_i2c_common *i2c_common = &i2c_dev->common;

	FUNC3(&i2c_dev->adap, I2C_LOCK_ROOT_ADAPTER);

	FUNC1(i2c_dev, false);
	FUNC0(i2c_common);
	i2c_common->mp2_dev = NULL;

	FUNC4(&i2c_dev->adap, I2C_LOCK_ROOT_ADAPTER);

	FUNC2(&i2c_dev->adap);
	return 0;
}