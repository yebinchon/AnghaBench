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
struct i2c_adapter {int /*<<< orphan*/  dev; TYPE_1__* algo; } ;
struct TYPE_2__ {int /*<<< orphan*/  smbus_xfer_atomic; int /*<<< orphan*/  master_xfer_atomic; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC5(struct i2c_adapter *adap)
{
	int ret = 0;

	if (FUNC2()) {
		FUNC0(!adap->algo->master_xfer_atomic && !adap->algo->smbus_xfer_atomic,
		     "No atomic I2C transfer handler for '%s'\n", FUNC1(&adap->dev));
		ret = FUNC4(adap, I2C_LOCK_SEGMENT) ? 0 : -EAGAIN;
	} else {
		FUNC3(adap, I2C_LOCK_SEGMENT);
	}

	return ret;
}