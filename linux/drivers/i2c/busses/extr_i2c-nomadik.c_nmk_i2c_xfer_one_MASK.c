#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  operation; } ;
struct nmk_i2c_dev {int result; TYPE_1__* adev; scalar_t__ virtbase; TYPE_2__ cli; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  I2C_READ ; 
 scalar_t__ I2C_SR ; 
 int /*<<< orphan*/  I2C_WRITE ; 
 char** abort_causes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct nmk_i2c_dev*) ; 
 int FUNC3 (struct nmk_i2c_dev*,int) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (struct nmk_i2c_dev*,int) ; 

__attribute__((used)) static int FUNC6(struct nmk_i2c_dev *dev, u16 flags)
{
	int status;

	if (flags & I2C_M_RD) {
		/* read operation */
		dev->cli.operation = I2C_READ;
		status = FUNC3(dev, flags);
	} else {
		/* write operation */
		dev->cli.operation = I2C_WRITE;
		status = FUNC5(dev, flags);
	}

	if (status || (dev->result)) {
		u32 i2c_sr;
		u32 cause;

		i2c_sr = FUNC4(dev->virtbase + I2C_SR);
		/*
		 * Check if the controller I2C operation status
		 * is set to ABORT(11b).
		 */
		if (((i2c_sr >> 2) & 0x3) == 0x3) {
			/* get the abort cause */
			cause =	(i2c_sr >> 4) & 0x7;
			FUNC1(&dev->adev->dev, "%s\n",
				cause >= FUNC0(abort_causes) ?
				"unknown reason" :
				abort_causes[cause]);
		}

		(void) FUNC2(dev);

		status = status ? status : dev->result;
	}

	return status;
}