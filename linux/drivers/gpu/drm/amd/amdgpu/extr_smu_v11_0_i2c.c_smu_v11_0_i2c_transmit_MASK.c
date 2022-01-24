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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CKSVII2C_IC_DATA_CMD ; 
 int /*<<< orphan*/  CKSVII2C_IC_STATUS ; 
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  DAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_UT_DRIVER ; 
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int I2C_NAK_7B_ADDR_NOACK ; 
 int I2C_NAK_TXDATA_NOACK ; 
 int I2C_NO_STOP ; 
 int I2C_OK ; 
 int I2C_RESTART ; 
 int I2C_SW_TIMEOUT ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESTART ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  STOP ; 
 int /*<<< orphan*/  TFNF ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int drm_debug ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_DATA_CMD ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_STATUS ; 
 unsigned long FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int) ; 
 int FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,int) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 struct amdgpu_device* FUNC13 (struct i2c_adapter*) ; 

__attribute__((used)) static uint32_t FUNC14(struct i2c_adapter *control,
				  uint8_t address, uint8_t *data,
				  uint32_t numbytes, uint32_t i2c_flag)
{
	struct amdgpu_device *adev = FUNC13(control);
	uint32_t bytes_sent, reg, ret = 0;
	unsigned long  timeout_counter;

	bytes_sent = 0;

	FUNC0("I2C_Transmit(), address = %x, bytes = %d , data: ",
		 (uint16_t)address, numbytes);

	if (drm_debug & DRM_UT_DRIVER) {
		FUNC7(KERN_INFO, "data: ", DUMP_PREFIX_NONE,
			       16, 1, data, numbytes, false);
	}

	/* Set the I2C slave address */
	FUNC11(control, address);
	/* Enable I2C */
	FUNC9(control, true);

	/* Clear status bits */
	FUNC8(control);


	timeout_counter = jiffies + FUNC6(20);

	while (numbytes > 0) {
		reg = FUNC4(SMUIO, 0, mmCKSVII2C_IC_STATUS);
		if (FUNC2(reg, CKSVII2C_IC_STATUS, TFNF)) {
			do {
				reg = 0;
				/*
				 * Prepare transaction, no need to set RESTART. I2C engine will send
				 * START as soon as it sees data in TXFIFO
				 */
				if (bytes_sent == 0)
					reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, RESTART,
							    (i2c_flag & I2C_RESTART) ? 1 : 0);
				reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, DAT, data[bytes_sent]);

				/* determine if we need to send STOP bit or not */
				if (numbytes == 1)
					/* Final transaction, so send stop unless I2C_NO_STOP */
					reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, STOP,
							    (i2c_flag & I2C_NO_STOP) ? 0 : 1);
				/* Write */
				reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, CMD, 0);
				FUNC5(SMUIO, 0, mmCKSVII2C_IC_DATA_CMD, reg);

				/* Record that the bytes were transmitted */
				bytes_sent++;
				numbytes--;

				reg = FUNC4(SMUIO, 0, mmCKSVII2C_IC_STATUS);

			} while (numbytes &&  FUNC2(reg, CKSVII2C_IC_STATUS, TFNF));
		}

		/*
		 * We waited too long for the transmission FIFO to become not-full.
		 * Exit the loop with error.
		 */
		if (FUNC12(jiffies, timeout_counter)) {
			ret |= I2C_SW_TIMEOUT;
			goto Err;
		}
	}

	ret = FUNC10(control);

Err:
	/* Any error, no point in proceeding */
	if (ret != I2C_OK) {
		if (ret & I2C_SW_TIMEOUT)
			FUNC1("TIMEOUT ERROR !!!");

		if (ret & I2C_NAK_7B_ADDR_NOACK)
			FUNC1("Received I2C_NAK_7B_ADDR_NOACK !!!");


		if (ret & I2C_NAK_TXDATA_NOACK)
			FUNC1("Received I2C_NAK_TXDATA_NOACK !!!");
	}

	return ret;
}