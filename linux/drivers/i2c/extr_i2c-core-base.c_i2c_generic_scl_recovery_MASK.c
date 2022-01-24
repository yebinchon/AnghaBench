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
struct i2c_bus_recovery_info {int /*<<< orphan*/  (* unprepare_recovery ) (struct i2c_adapter*) ;int /*<<< orphan*/  (* set_sda ) (struct i2c_adapter*,int) ;int /*<<< orphan*/  (* set_scl ) (struct i2c_adapter*,int) ;int /*<<< orphan*/  (* get_scl ) (struct i2c_adapter*) ;int /*<<< orphan*/  (* prepare_recovery ) (struct i2c_adapter*) ;} ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct i2c_bus_recovery_info* bus_recovery_info; } ;

/* Variables and functions */
 int EBUSY ; 
 int EOPNOTSUPP ; 
 int RECOVERY_CLK_CNT ; 
 int RECOVERY_NDELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*) ; 

int FUNC10(struct i2c_adapter *adap)
{
	struct i2c_bus_recovery_info *bri = adap->bus_recovery_info;
	int i = 0, scl = 1, ret = 0;

	if (bri->prepare_recovery)
		bri->prepare_recovery(adap);

	/*
	 * If we can set SDA, we will always create a STOP to ensure additional
	 * pulses will do no harm. This is achieved by letting SDA follow SCL
	 * half a cycle later. Check the 'incomplete_write_byte' fault injector
	 * for details.
	 */
	bri->set_scl(adap, scl);
	FUNC2(RECOVERY_NDELAY / 2);
	if (bri->set_sda)
		bri->set_sda(adap, scl);
	FUNC2(RECOVERY_NDELAY / 2);

	/*
	 * By this time SCL is high, as we need to give 9 falling-rising edges
	 */
	while (i++ < RECOVERY_CLK_CNT * 2) {
		if (scl) {
			/* SCL shouldn't be low here */
			if (!bri->get_scl(adap)) {
				FUNC0(&adap->dev,
					"SCL is stuck low, exit recovery\n");
				ret = -EBUSY;
				break;
			}
		}

		scl = !scl;
		bri->set_scl(adap, scl);
		/* Creating STOP again, see above */
		FUNC2(RECOVERY_NDELAY / 2);
		if (bri->set_sda)
			bri->set_sda(adap, scl);
		FUNC2(RECOVERY_NDELAY / 2);

		if (scl) {
			ret = FUNC1(adap);
			if (ret == 0)
				break;
		}
	}

	/* If we can't check bus status, assume recovery worked */
	if (ret == -EOPNOTSUPP)
		ret = 0;

	if (bri->unprepare_recovery)
		bri->unprepare_recovery(adap);

	return ret;
}