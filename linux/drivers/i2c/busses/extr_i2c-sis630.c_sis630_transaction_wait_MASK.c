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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BYTE_DONE_STS ; 
 int EAGAIN ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int SIS630_BLOCK_DATA ; 
 int SMBCOL_STS ; 
 int SMBERR_STS ; 
 int /*<<< orphan*/  SMB_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap, int size)
{
	int temp, result = 0, timeout = 0;

	/* We will always wait for a fraction of a second! */
	do {
		FUNC2(1);
		temp = FUNC3(SMB_STS);
		/* check if block transmitted */
		if (size == SIS630_BLOCK_DATA && (temp & BYTE_DONE_STS))
			break;
	} while (!(temp & 0x0e) && (timeout++ < MAX_TIMEOUT));

	/* If the SMBus is still busy, we give up */
	if (timeout > MAX_TIMEOUT) {
		FUNC0(&adap->dev, "SMBus Timeout!\n");
		result = -ETIMEDOUT;
	}

	if (temp & SMBERR_STS) {
		FUNC0(&adap->dev, "Error: Failed bus transaction\n");
		result = -ENXIO;
	}

	if (temp & SMBCOL_STS) {
		FUNC1(&adap->dev, "Bus collision!\n");
		result = -EAGAIN;
	}

	return result;
}