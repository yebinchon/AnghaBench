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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct fsi_i2c_master {int /*<<< orphan*/  fsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  I2C_FSI_MODE ; 
 int /*<<< orphan*/  I2C_FSI_PORT_BUSY ; 
 int /*<<< orphan*/  I2C_FSI_RESET_I2C ; 
 int /*<<< orphan*/  I2C_MODE_PORT ; 
 int /*<<< orphan*/  I2C_PORT_BUSY_RESET ; 
 int FUNC1 (struct fsi_i2c_master*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct fsi_i2c_master *i2c, u16 port)
{
	int rc;
	u32 mode, dummy = 0;

	/* reset engine */
	rc = FUNC3(i2c->fsi, I2C_FSI_RESET_I2C, &dummy);
	if (rc)
		return rc;

	/* re-init engine */
	rc = FUNC1(i2c);
	if (rc)
		return rc;

	rc = FUNC2(i2c->fsi, I2C_FSI_MODE, &mode);
	if (rc)
		return rc;

	/* set port; default after reset is 0 */
	if (port) {
		mode &= ~I2C_MODE_PORT;
		mode |= FUNC0(I2C_MODE_PORT, port);
		rc = FUNC3(i2c->fsi, I2C_FSI_MODE, &mode);
		if (rc)
			return rc;
	}

	/* reset busy register; hw workaround */
	dummy = I2C_PORT_BUSY_RESET;
	rc = FUNC3(i2c->fsi, I2C_FSI_PORT_BUSY, &dummy);
	if (rc)
		return rc;

	return 0;
}