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
typedef  int u8 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int MSTO_EN ; 
 int SMBCLK_SEL ; 
 int /*<<< orphan*/  SMBHOST_CNT ; 
 int /*<<< orphan*/  SMB_CNT ; 
 int SMB_HOSTBUSY ; 
 int SMB_KILL ; 
 int SMB_PROBE ; 
 int SMB_START ; 
 int /*<<< orphan*/  SMB_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ high_clock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adap, int size,
				    u8 *oldclock)
{
	int temp;

	/* Make sure the SMBus host is ready to start transmitting. */
	temp = FUNC1(SMB_CNT);
	if ((temp & (SMB_PROBE | SMB_HOSTBUSY)) != 0x00) {
		FUNC0(&adap->dev, "SMBus busy (%02x). Resetting...\n", temp);
		/* kill smbus transaction */
		FUNC2(SMBHOST_CNT, SMB_KILL);

		temp = FUNC1(SMB_CNT);
		if (temp & (SMB_PROBE | SMB_HOSTBUSY)) {
			FUNC0(&adap->dev, "Failed! (%02x)\n", temp);
			return -EBUSY;
		} else {
			FUNC0(&adap->dev, "Successful!\n");
		}
	}

	/* save old clock, so we can prevent machine for hung */
	*oldclock = FUNC1(SMB_CNT);

	FUNC0(&adap->dev, "saved clock 0x%02x\n", *oldclock);

	/* disable timeout interrupt,
	 * set Host Master Clock to 56KHz if requested */
	if (high_clock)
		FUNC2(SMB_CNT, SMBCLK_SEL);
	else
		FUNC2(SMB_CNT, (*oldclock & ~MSTO_EN));

	/* clear all sticky bits */
	temp = FUNC1(SMB_STS);
	FUNC2(SMB_STS, temp & 0x1e);

	/* start the transaction by setting bit 4 and size */
	FUNC2(SMBHOST_CNT, SMB_START | (size & 0x07));

	return 0;
}