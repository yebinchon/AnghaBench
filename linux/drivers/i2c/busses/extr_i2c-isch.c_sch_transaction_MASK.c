#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_RETRIES ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
 int /*<<< orphan*/  SMBHSTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ sch_adapter ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(void)
{
	int temp;
	int result = 0;
	int retries = 0;

	FUNC0(&sch_adapter.dev, "Transaction (pre): CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC2(SMBHSTCNT),
		FUNC2(SMBHSTCMD), FUNC2(SMBHSTADD), FUNC2(SMBHSTDAT0),
		FUNC2(SMBHSTDAT1));

	/* Make sure the SMBus host is ready to start transmitting */
	temp = FUNC2(SMBHSTSTS) & 0x0f;
	if (temp) {
		/* Can not be busy since we checked it in sch_access */
		if (temp & 0x01) {
			FUNC0(&sch_adapter.dev, "Completion (%02x). "
				"Clear...\n", temp);
		}
		if (temp & 0x06) {
			FUNC0(&sch_adapter.dev, "SMBus error (%02x). "
				"Resetting...\n", temp);
		}
		FUNC3(temp, SMBHSTSTS);
		temp = FUNC2(SMBHSTSTS) & 0x0f;
		if (temp) {
			FUNC1(&sch_adapter.dev,
				"SMBus is not ready: (%02x)\n", temp);
			return -EAGAIN;
		}
	}

	/* start the transaction by setting bit 4 */
	FUNC3(FUNC2(SMBHSTCNT) | 0x10, SMBHSTCNT);

	do {
		FUNC4(100, 200);
		temp = FUNC2(SMBHSTSTS) & 0x0f;
	} while ((temp & 0x08) && (retries++ < MAX_RETRIES));

	/* If the SMBus is still busy, we give up */
	if (retries > MAX_RETRIES) {
		FUNC1(&sch_adapter.dev, "SMBus Timeout!\n");
		result = -ETIMEDOUT;
	}
	if (temp & 0x04) {
		result = -EIO;
		FUNC0(&sch_adapter.dev, "Bus collision! SMBus may be "
			"locked until next hard reset. (sorry!)\n");
		/* Clock stops and slave is stuck in mid-transmission */
	} else if (temp & 0x02) {
		result = -EIO;
		FUNC1(&sch_adapter.dev, "Error: no response!\n");
	} else if (temp & 0x01) {
		FUNC0(&sch_adapter.dev, "Post complete!\n");
		FUNC3(temp, SMBHSTSTS);
		temp = FUNC2(SMBHSTSTS) & 0x07;
		if (temp & 0x06) {
			/* Completion clear failed */
			FUNC0(&sch_adapter.dev, "Failed reset at end of "
				"transaction (%02x), Bus error!\n", temp);
		}
	} else {
		result = -ENXIO;
		FUNC0(&sch_adapter.dev, "No such address.\n");
	}
	FUNC0(&sch_adapter.dev, "Transaction (post): CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC2(SMBHSTCNT),
		FUNC2(SMBHSTCMD), FUNC2(SMBHSTADD), FUNC2(SMBHSTDAT0),
		FUNC2(SMBHSTDAT1));
	return result;
}