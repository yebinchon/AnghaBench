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
struct i2c_bus_recovery_info {struct gpio_desc* sda_gpiod; int /*<<< orphan*/  unprepare_recovery; int /*<<< orphan*/  prepare_recovery; int /*<<< orphan*/  recover_bus; struct gpio_desc* scl_gpiod; } ;
struct i2c_adapter {struct i2c_bus_recovery_info* bus_recovery_info; } ;
struct gpio_desc {int dummy; } ;
struct dw_i2c_dev {int /*<<< orphan*/  dev; struct i2c_adapter adapter; struct i2c_bus_recovery_info rinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int FUNC3 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 struct gpio_desc* FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_dw_prepare_recovery ; 
 int /*<<< orphan*/  i2c_dw_unprepare_recovery ; 
 int /*<<< orphan*/  i2c_generic_scl_recovery ; 

__attribute__((used)) static int FUNC6(struct dw_i2c_dev *dev)
{
	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
	struct i2c_adapter *adap = &dev->adapter;
	struct gpio_desc *gpio;

	gpio = FUNC5(dev->dev, "scl", GPIOD_OUT_HIGH);
	if (FUNC1(gpio))
		return FUNC3(gpio);

	rinfo->scl_gpiod = gpio;

	gpio = FUNC5(dev->dev, "sda", GPIOD_IN);
	if (FUNC0(gpio))
		return FUNC2(gpio);
	rinfo->sda_gpiod = gpio;

	rinfo->recover_bus = i2c_generic_scl_recovery;
	rinfo->prepare_recovery = i2c_dw_prepare_recovery;
	rinfo->unprepare_recovery = i2c_dw_unprepare_recovery;
	adap->bus_recovery_info = rinfo;

	FUNC4(dev->dev, "running with gpio recovery mode! scl%s",
		 rinfo->sda_gpiod ? ",sda" : "");

	return 0;
}