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
typedef  int u32 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALI1563_MAX_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int HST_CNTL1_TIMEOUT ; 
 int HST_CNTL2_KILL ; 
 int HST_CNTL2_QUICK ; 
 int HST_CNTL2_START ; 
 int HST_STS_BAD ; 
 int HST_STS_BUSERR ; 
 int HST_STS_BUSY ; 
 int HST_STS_DEVERR ; 
 int HST_STS_FAIL ; 
 int /*<<< orphan*/  SMB_HST_ADD ; 
 int /*<<< orphan*/  SMB_HST_CMD ; 
 int /*<<< orphan*/  SMB_HST_CNTL1 ; 
 int /*<<< orphan*/  SMB_HST_CNTL2 ; 
 int /*<<< orphan*/  SMB_HST_DAT0 ; 
 int /*<<< orphan*/  SMB_HST_DAT1 ; 
 int /*<<< orphan*/  SMB_HST_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *a, int size)
{
	u32 data;
	int timeout;
	int status = -EIO;

	FUNC0(&a->dev, "Transaction (pre): STS=%02x, CNTL1=%02x, "
		"CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
		FUNC2(SMB_HST_STS), FUNC2(SMB_HST_CNTL1), FUNC2(SMB_HST_CNTL2),
		FUNC2(SMB_HST_CMD), FUNC2(SMB_HST_ADD), FUNC2(SMB_HST_DAT0),
		FUNC2(SMB_HST_DAT1));

	data = FUNC2(SMB_HST_STS);
	if (data & HST_STS_BAD) {
		FUNC1(&a->dev, "ali1563: Trying to reset busy device\n");
		FUNC4(data | HST_STS_BAD, SMB_HST_STS);
		data = FUNC2(SMB_HST_STS);
		if (data & HST_STS_BAD)
			return -EBUSY;
	}
	FUNC4(FUNC2(SMB_HST_CNTL2) | HST_CNTL2_START, SMB_HST_CNTL2);

	timeout = ALI1563_MAX_TIMEOUT;
	do {
		FUNC3(1);
	} while (((data = FUNC2(SMB_HST_STS)) & HST_STS_BUSY) && --timeout);

	FUNC0(&a->dev, "Transaction (post): STS=%02x, CNTL1=%02x, "
		"CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
		FUNC2(SMB_HST_STS), FUNC2(SMB_HST_CNTL1), FUNC2(SMB_HST_CNTL2),
		FUNC2(SMB_HST_CMD), FUNC2(SMB_HST_ADD), FUNC2(SMB_HST_DAT0),
		FUNC2(SMB_HST_DAT1));

	if (timeout && !(data & HST_STS_BAD))
		return 0;

	if (!timeout) {
		FUNC1(&a->dev, "Timeout - Trying to KILL transaction!\n");
		/* Issue 'kill' to host controller */
		FUNC4(HST_CNTL2_KILL, SMB_HST_CNTL2);
		data = FUNC2(SMB_HST_STS);
		status = -ETIMEDOUT;
	}

	/* device error - no response, ignore the autodetection case */
	if (data & HST_STS_DEVERR) {
		if (size != HST_CNTL2_QUICK)
			FUNC1(&a->dev, "Device error!\n");
		status = -ENXIO;
	}
	/* bus collision */
	if (data & HST_STS_BUSERR) {
		FUNC1(&a->dev, "Bus collision!\n");
		/* Issue timeout, hoping it helps */
		FUNC4(HST_CNTL1_TIMEOUT, SMB_HST_CNTL1);
	}

	if (data & HST_STS_FAIL) {
		FUNC1(&a->dev, "Cleaning fail after KILL!\n");
		FUNC4(0x0, SMB_HST_CNTL2);
	}

	return status;
}