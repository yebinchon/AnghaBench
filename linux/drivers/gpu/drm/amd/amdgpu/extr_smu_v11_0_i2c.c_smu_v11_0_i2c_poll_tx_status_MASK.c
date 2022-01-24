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
typedef  int /*<<< orphan*/  uint32_t ;
struct i2c_adapter {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABRT_7B_ADDR_NOACK ; 
 int /*<<< orphan*/  ABRT_TXDATA_NOACK ; 
 int /*<<< orphan*/  CKSVII2C_IC_INTR_STAT ; 
 int /*<<< orphan*/  CKSVII2C_IC_STATUS ; 
 int /*<<< orphan*/  CKSVII2C_IC_TX_ABRT_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I2C_ABORT ; 
 int /*<<< orphan*/  I2C_NAK_7B_ADDR_NOACK ; 
 int /*<<< orphan*/  I2C_NAK_TXDATA_NOACK ; 
 int /*<<< orphan*/  I2C_OK ; 
 int /*<<< orphan*/  I2C_SW_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_TX_ABRT ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  TFE ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_INTR_STAT ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_STATUS ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_TX_ABRT_SOURCE ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 struct amdgpu_device* FUNC6 (struct i2c_adapter*) ; 

__attribute__((used)) static uint32_t FUNC7(struct i2c_adapter *control)
{
	struct amdgpu_device *adev = FUNC6(control);
	uint32_t ret = I2C_OK;
	uint32_t reg, reg_c_tx_abrt_source;

	/*Check if transmission is completed */
	unsigned long  timeout_counter = jiffies + FUNC3(20);

	do {
		if (FUNC5(jiffies, timeout_counter)) {
			ret |= I2C_SW_TIMEOUT;
			break;
		}

		reg = FUNC2(SMUIO, 0, mmCKSVII2C_IC_STATUS);

	} while (FUNC1(reg, CKSVII2C_IC_STATUS, TFE) == 0);

	if (ret != I2C_OK)
		return ret;

	/* This only checks if NAK is received and transaction got aborted */
	reg = FUNC2(SMUIO, 0, mmCKSVII2C_IC_INTR_STAT);

	if (FUNC1(reg, CKSVII2C_IC_INTR_STAT, R_TX_ABRT) == 1) {
		reg_c_tx_abrt_source = FUNC2(SMUIO, 0, mmCKSVII2C_IC_TX_ABRT_SOURCE);
		FUNC0("TX was terminated, IC_TX_ABRT_SOURCE val is:%x", reg_c_tx_abrt_source);

		/* Check for stop due to NACK */
		if (FUNC1(reg_c_tx_abrt_source,
				  CKSVII2C_IC_TX_ABRT_SOURCE,
				  ABRT_TXDATA_NOACK) == 1) {

			ret |= I2C_NAK_TXDATA_NOACK;

		} else if (FUNC1(reg_c_tx_abrt_source,
					 CKSVII2C_IC_TX_ABRT_SOURCE,
					 ABRT_7B_ADDR_NOACK) == 1) {

			ret |= I2C_NAK_7B_ADDR_NOACK;
		} else {
			ret |= I2C_ABORT;
		}

		FUNC4(control);
	}

	return ret;
}