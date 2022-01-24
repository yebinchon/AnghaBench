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
typedef  int /*<<< orphan*/  u8 ;
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int QIB_TWSI_NO_DEV ; 
 int /*<<< orphan*/  QIB_TWSI_START ; 
 int READ_CMD ; 
 int WRITE_CMD ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,char*,int) ; 
 int FUNC2 (struct qib_devdata*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*) ; 

int FUNC5(struct qib_devdata *dd, int dev, int addr,
		    const void *buffer, int len)
{
	int sub_len;
	const u8 *bp = buffer;
	int max_wait_time, i;
	int ret = 1;

	while (len > 0) {
		if (dev == QIB_TWSI_NO_DEV) {
			if (FUNC2(dd, (addr << 1) | WRITE_CMD,
					QIB_TWSI_START)) {
				goto failed_write;
			}
		} else {
			/* Real I2C */
			if (FUNC2(dd, dev | WRITE_CMD, QIB_TWSI_START))
				goto failed_write;
			ret = FUNC2(dd, addr, 0);
			if (ret) {
				FUNC1(dd,
					"Failed to write interface write addr %02X\n",
					addr);
				goto failed_write;
			}
		}

		sub_len = FUNC0(len, 4);
		addr += sub_len;
		len -= sub_len;

		for (i = 0; i < sub_len; i++)
			if (FUNC2(dd, *bp++, 0))
				goto failed_write;

		FUNC4(dd);

		/*
		 * Wait for write complete by waiting for a successful
		 * read (the chip replies with a zero after the write
		 * cmd completes, and before it writes to the eeprom.
		 * The startcmd for the read will fail the ack until
		 * the writes have completed.   We do this inline to avoid
		 * the debug prints that are in the real read routine
		 * if the startcmd fails.
		 * We also use the proper device address, so it doesn't matter
		 * whether we have real eeprom_dev. Legacy likes any address.
		 */
		max_wait_time = 100;
		while (FUNC2(dd, dev | READ_CMD, QIB_TWSI_START)) {
			FUNC4(dd);
			if (!--max_wait_time)
				goto failed_write;
		}
		/* now read (and ignore) the resulting byte */
		FUNC3(dd, 1);
	}

	ret = 0;
	goto bail;

failed_write:
	FUNC4(dd);
	ret = 1;

bail:
	return ret;
}