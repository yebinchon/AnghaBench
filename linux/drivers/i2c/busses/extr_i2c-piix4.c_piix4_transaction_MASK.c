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
struct i2c_piix4_adapdata {unsigned short smba; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
 int /*<<< orphan*/  SMBHSTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct i2c_piix4_adapdata* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ srvrworks_csb5_delay ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *piix4_adapter)
{
	struct i2c_piix4_adapdata *adapdata = FUNC2(piix4_adapter);
	unsigned short piix4_smba = adapdata->smba;
	int temp;
	int result = 0;
	int timeout = 0;

	FUNC0(&piix4_adapter->dev, "Transaction (pre): CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC4(SMBHSTCNT),
		FUNC4(SMBHSTCMD), FUNC4(SMBHSTADD), FUNC4(SMBHSTDAT0),
		FUNC4(SMBHSTDAT1));

	/* Make sure the SMBus host is ready to start transmitting */
	if ((temp = FUNC4(SMBHSTSTS)) != 0x00) {
		FUNC0(&piix4_adapter->dev, "SMBus busy (%02x). "
			"Resetting...\n", temp);
		FUNC5(temp, SMBHSTSTS);
		if ((temp = FUNC4(SMBHSTSTS)) != 0x00) {
			FUNC1(&piix4_adapter->dev, "Failed! (%02x)\n", temp);
			return -EBUSY;
		} else {
			FUNC0(&piix4_adapter->dev, "Successful!\n");
		}
	}

	/* start the transaction by setting bit 6 */
	FUNC5(FUNC3(SMBHSTCNT) | 0x040, SMBHSTCNT);

	/* We will always wait for a fraction of a second! (See PIIX4 docs errata) */
	if (srvrworks_csb5_delay) /* Extra delay for SERVERWORKS_CSB5 */
		FUNC6(2000, 2100);
	else
		FUNC6(250, 500);

	while ((++timeout < MAX_TIMEOUT) &&
	       ((temp = FUNC4(SMBHSTSTS)) & 0x01))
		FUNC6(250, 500);

	/* If the SMBus is still busy, we give up */
	if (timeout == MAX_TIMEOUT) {
		FUNC1(&piix4_adapter->dev, "SMBus Timeout!\n");
		result = -ETIMEDOUT;
	}

	if (temp & 0x10) {
		result = -EIO;
		FUNC1(&piix4_adapter->dev, "Error: Failed bus transaction\n");
	}

	if (temp & 0x08) {
		result = -EIO;
		FUNC0(&piix4_adapter->dev, "Bus collision! SMBus may be "
			"locked until next hard reset. (sorry!)\n");
		/* Clock stops and slave is stuck in mid-transmission */
	}

	if (temp & 0x04) {
		result = -ENXIO;
		FUNC0(&piix4_adapter->dev, "Error: no response!\n");
	}

	if (FUNC4(SMBHSTSTS) != 0x00)
		FUNC5(FUNC3(SMBHSTSTS), SMBHSTSTS);

	if ((temp = FUNC4(SMBHSTSTS)) != 0x00) {
		FUNC1(&piix4_adapter->dev, "Failed reset at end of "
			"transaction (%02x)\n", temp);
	}
	FUNC0(&piix4_adapter->dev, "Transaction (post): CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC4(SMBHSTCNT),
		FUNC4(SMBHSTCMD), FUNC4(SMBHSTADD), FUNC4(SMBHSTDAT0),
		FUNC4(SMBHSTDAT1));
	return result;
}