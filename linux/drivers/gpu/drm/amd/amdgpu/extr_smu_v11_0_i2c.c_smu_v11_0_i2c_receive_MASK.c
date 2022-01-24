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
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RESTART ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  STOP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int drm_debug ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_DATA_CMD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,int) ; 
 int FUNC9 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,int) ; 
 struct amdgpu_device* FUNC11 (struct i2c_adapter*) ; 

__attribute__((used)) static uint32_t FUNC12(struct i2c_adapter *control,
				 uint8_t address, uint8_t *data,
				 uint32_t numbytes, uint8_t i2c_flag)
{
	struct amdgpu_device *adev = FUNC11(control);
	uint32_t bytes_received, ret = I2C_OK;

	bytes_received = 0;

	/* Set the I2C slave address */
	FUNC10(control, address);

	/* Enable I2C */
	FUNC8(control, true);

	while (numbytes > 0) {
		uint32_t reg = 0;

		FUNC7(control);


		/* Prepare transaction */

		/* Each time we disable I2C, so this is not a restart */
		if (bytes_received == 0)
			reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, RESTART,
					    (i2c_flag & I2C_RESTART) ? 1 : 0);

		reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, DAT, 0);
		/* Read */
		reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, CMD, 1);

		/* Transmitting last byte */
		if (numbytes == 1)
			/* Final transaction, so send stop if requested */
			reg = FUNC3(reg, CKSVII2C_IC_DATA_CMD, STOP,
					    (i2c_flag & I2C_NO_STOP) ? 0 : 1);

		FUNC5(SMUIO, 0, mmCKSVII2C_IC_DATA_CMD, reg);

		ret = FUNC9(control);

		/* Any error, no point in proceeding */
		if (ret != I2C_OK) {
			if (ret & I2C_SW_TIMEOUT)
				FUNC1("TIMEOUT ERROR !!!");

			if (ret & I2C_NAK_7B_ADDR_NOACK)
				FUNC1("Received I2C_NAK_7B_ADDR_NOACK !!!");

			if (ret & I2C_NAK_TXDATA_NOACK)
				FUNC1("Received I2C_NAK_TXDATA_NOACK !!!");

			break;
		}

		reg = FUNC4(SMUIO, 0, mmCKSVII2C_IC_DATA_CMD);
		data[bytes_received] = FUNC2(reg, CKSVII2C_IC_DATA_CMD, DAT);

		/* Record that the bytes were received */
		bytes_received++;
		numbytes--;
	}

	FUNC0("I2C_Receive(), address = %x, bytes = %d, data :",
		  (uint16_t)address, bytes_received);

	if (drm_debug & DRM_UT_DRIVER) {
		FUNC6(KERN_INFO, "data: ", DUMP_PREFIX_NONE,
			       16, 1, data, bytes_received, false);
	}

	return ret;
}