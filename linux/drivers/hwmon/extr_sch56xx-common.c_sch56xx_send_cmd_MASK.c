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
typedef  int u16 ;

/* Variables and functions */
 int EIO ; 
 int SCH56XX_CMD_READ ; 
 int SCH56XX_CMD_WRITE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(u16 addr, u8 cmd, u16 reg, u8 v)
{
	u8 val;
	int i;
	/*
	 * According to SMSC for the commands we use the maximum time for
	 * the EM to respond is 15 ms, but testing shows in practice it
	 * responds within 15-32 reads, so we first busy poll, and if
	 * that fails sleep a bit and try again until we are way past
	 * the 15 ms maximum response time.
	 */
	const int max_busy_polls = 64;
	const int max_lazy_polls = 32;

	/* (Optional) Write-Clear the EC to Host Mailbox Register */
	val = FUNC0(addr + 1);
	FUNC2(val, addr + 1);

	/* Set Mailbox Address Pointer to first location in Region 1 */
	FUNC2(0x00, addr + 2);
	FUNC2(0x80, addr + 3);

	/* Write Request Packet Header */
	FUNC2(cmd, addr + 4); /* VREG Access Type read:0x02 write:0x03 */
	FUNC2(0x01, addr + 5); /* # of Entries: 1 Byte (8-bit) */
	FUNC2(0x04, addr + 2); /* Mailbox AP to first data entry loc. */

	/* Write Value field */
	if (cmd == SCH56XX_CMD_WRITE)
		FUNC2(v, addr + 4);

	/* Write Address field */
	FUNC2(reg & 0xff, addr + 6);
	FUNC2(reg >> 8, addr + 7);

	/* Execute the Random Access Command */
	FUNC2(0x01, addr); /* Write 01h to the Host-to-EC register */

	/* EM Interface Polling "Algorithm" */
	for (i = 0; i < max_busy_polls + max_lazy_polls; i++) {
		if (i >= max_busy_polls)
			FUNC1(1);
		/* Read Interrupt source Register */
		val = FUNC0(addr + 8);
		/* Write Clear the interrupt source bits */
		if (val)
			FUNC2(val, addr + 8);
		/* Command Completed ? */
		if (val & 0x01)
			break;
	}
	if (i == max_busy_polls + max_lazy_polls) {
		FUNC3("Max retries exceeded reading virtual register 0x%04hx (%d)\n",
		       reg, 1);
		return -EIO;
	}

	/*
	 * According to SMSC we may need to retry this, but sofar I've always
	 * seen this succeed in 1 try.
	 */
	for (i = 0; i < max_busy_polls; i++) {
		/* Read EC-to-Host Register */
		val = FUNC0(addr + 1);
		/* Command Completed ? */
		if (val == 0x01)
			break;

		if (i == 0)
			FUNC4("EC reports: 0x%02x reading virtual register 0x%04hx\n",
				(unsigned int)val, reg);
	}
	if (i == max_busy_polls) {
		FUNC3("Max retries exceeded reading virtual register 0x%04hx (%d)\n",
		       reg, 2);
		return -EIO;
	}

	/*
	 * According to the SMSC app note we should now do:
	 *
	 * Set Mailbox Address Pointer to first location in Region 1 *
	 * outb(0x00, addr + 2);
	 * outb(0x80, addr + 3);
	 *
	 * But if we do that things don't work, so let's not.
	 */

	/* Read Value field */
	if (cmd == SCH56XX_CMD_READ)
		return FUNC0(addr + 4);

	return 0;
}