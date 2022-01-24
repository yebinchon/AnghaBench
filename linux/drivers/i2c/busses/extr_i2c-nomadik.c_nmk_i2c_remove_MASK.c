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
struct resource {int /*<<< orphan*/  start; } ;
struct nmk_i2c_dev {int /*<<< orphan*/  clk; scalar_t__ virtbase; int /*<<< orphan*/  adap; } ;
struct amba_device {struct resource res; } ;

/* Variables and functions */
 scalar_t__ I2C_CR ; 
 int /*<<< orphan*/  I2C_CR_PE ; 
 struct nmk_i2c_dev* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*) ; 

__attribute__((used)) static int FUNC9(struct amba_device *adev)
{
	struct resource *res = &adev->res;
	struct nmk_i2c_dev *dev = FUNC0(adev);

	FUNC6(&dev->adap);
	FUNC4(dev);
	FUNC3(dev);
	FUNC1(dev);
	/* disable the controller */
	FUNC5(dev->virtbase + I2C_CR, I2C_CR_PE);
	FUNC2(dev->clk);
	FUNC7(res->start, FUNC8(res));

	return 0;
}