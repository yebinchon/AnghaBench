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
struct dw_i2c_dev {scalar_t__ sda_hold_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_SDA_HOLD ; 
 int /*<<< orphan*/  FUNC0 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_i2c_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_i2c_dev*) ; 

__attribute__((used)) static int FUNC5(struct dw_i2c_dev *dev)
{
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	/* Disable the adapter. */
	FUNC0(dev);

	/* Write SDA hold time if supported */
	if (dev->sda_hold_time)
		FUNC1(dev, dev->sda_hold_time, DW_IC_SDA_HOLD);

	FUNC3(dev);
	FUNC4(dev);

	return 0;
}