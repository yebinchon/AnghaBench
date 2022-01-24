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
struct pmac_i2c_bus {int dummy; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int I2C_M_TEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (struct i2c_msg*) ; 
 struct pmac_i2c_bus* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pmac_i2c_bus*) ; 
 int /*<<< orphan*/  pmac_i2c_mode_std ; 
 int FUNC5 (struct pmac_i2c_bus*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pmac_i2c_bus*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pmac_i2c_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(	struct i2c_adapter *adap,
					struct i2c_msg *msgs,
					int num)
{
	struct pmac_i2c_bus	*bus = FUNC3(adap);
	int			rc = 0;
	int			addrdir;

	if (msgs->flags & I2C_M_TEN)
		return -EINVAL;
	addrdir = FUNC2(msgs);

	rc = FUNC5(bus, 0);
	if (rc) {
		FUNC1(&adap->dev, "Failed to open I2C, err %d\n", rc);
		return rc;
	}
	rc = FUNC6(bus, pmac_i2c_mode_std);
	if (rc) {
		FUNC1(&adap->dev, "Failed to set I2C mode %d, err %d\n",
			pmac_i2c_mode_std, rc);
		goto bail;
	}
	rc = FUNC7(bus, addrdir, 0, 0, msgs->buf, msgs->len);
	if (rc < 0) {
		if (rc == -ENXIO)
			FUNC0(&adap->dev, "I2C %s 0x%02x failed, err %d\n",
				addrdir & 1 ? "read from" : "write to",
				addrdir >> 1, rc);
		else
			FUNC1(&adap->dev, "I2C %s 0x%02x failed, err %d\n",
				addrdir & 1 ? "read from" : "write to",
				addrdir >> 1, rc);
	}
 bail:
	FUNC4(bus);
	return rc < 0 ? rc : 1;
}