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
 int /*<<< orphan*/  CKSVII2C_IC_STATUS ; 
 int /*<<< orphan*/  CKSVII2C_IC_TX_ABRT_SOURCE ; 
 int /*<<< orphan*/  I2C_NAK_7B_ADDR_NOACK ; 
 int /*<<< orphan*/  I2C_OK ; 
 int /*<<< orphan*/  I2C_SW_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFNE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_STATUS ; 
 int /*<<< orphan*/  mmCKSVII2C_IC_TX_ABRT_SOURCE ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct amdgpu_device* FUNC5 (struct i2c_adapter*) ; 

__attribute__((used)) static uint32_t FUNC6(struct i2c_adapter *control)
{
	struct amdgpu_device *adev = FUNC5(control);
	uint32_t ret = I2C_OK;
	uint32_t reg_ic_status, reg_c_tx_abrt_source;

	reg_c_tx_abrt_source = FUNC1(SMUIO, 0, mmCKSVII2C_IC_TX_ABRT_SOURCE);

	/* If slave is not present */
	if (FUNC0(reg_c_tx_abrt_source,
			  CKSVII2C_IC_TX_ABRT_SOURCE,
			  ABRT_7B_ADDR_NOACK) == 1) {
		ret |= I2C_NAK_7B_ADDR_NOACK;

		FUNC3(control);
	} else {  /* wait till some data is there in RXFIFO */
		/* Poll for some byte in RXFIFO */
		unsigned long  timeout_counter = jiffies + FUNC2(20);

		do {
			if (FUNC4(jiffies, timeout_counter)) {
				ret |= I2C_SW_TIMEOUT;
				break;
			}

			reg_ic_status = FUNC1(SMUIO, 0, mmCKSVII2C_IC_STATUS);

		} while (FUNC0(reg_ic_status, CKSVII2C_IC_STATUS, RFNE) == 0);
	}

	return ret;
}