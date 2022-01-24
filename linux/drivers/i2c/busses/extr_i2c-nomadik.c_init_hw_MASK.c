#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  operation; } ;
struct nmk_i2c_dev {TYPE_1__ cli; scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ I2C_CR ; 
 int /*<<< orphan*/  I2C_CR_PE ; 
 int /*<<< orphan*/  I2C_NO_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nmk_i2c_dev*) ; 
 int FUNC2 (struct nmk_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nmk_i2c_dev *dev)
{
	int stat;

	stat = FUNC2(dev);
	if (stat)
		goto exit;

	/* disable the controller */
	FUNC3(dev->virtbase + I2C_CR , I2C_CR_PE);

	FUNC1(dev);

	FUNC0(dev);

	dev->cli.operation = I2C_NO_OPERATION;

exit:
	return stat;
}