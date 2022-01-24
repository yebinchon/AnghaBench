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
 int /*<<< orphan*/  TWSI_BUF_WAIT_USEC ; 
 int WRITE_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*,int) ; 
 int FUNC1 (struct qib_devdata*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct qib_devdata *dd, int dev, int addr,
		    void *buffer, int len)
{
	int ret;
	u8 *bp = buffer;

	ret = 1;

	if (dev == QIB_TWSI_NO_DEV) {
		/* legacy not-really-I2C */
		addr = (addr << 1) | READ_CMD;
		ret = FUNC1(dd, addr, QIB_TWSI_START);
	} else {
		/* Actual I2C */
		ret = FUNC1(dd, dev | WRITE_CMD, QIB_TWSI_START);
		if (ret) {
			FUNC3(dd);
			ret = 1;
			goto bail;
		}
		/*
		 * SFF spec claims we do _not_ stop after the addr
		 * but simply issue a start with the "read" dev-addr.
		 * Since we are implicitely waiting for ACK here,
		 * we need t_buf (nominally 20uSec) before that start,
		 * and cannot rely on the delay built in to the STOP
		 */
		ret = FUNC1(dd, addr, 0);
		FUNC4(TWSI_BUF_WAIT_USEC);

		if (ret) {
			FUNC0(dd,
				"Failed to write interface read addr %02X\n",
				addr);
			ret = 1;
			goto bail;
		}
		ret = FUNC1(dd, dev | READ_CMD, QIB_TWSI_START);
	}
	if (ret) {
		FUNC3(dd);
		ret = 1;
		goto bail;
	}

	/*
	 * block devices keeps clocking data out as long as we ack,
	 * automatically incrementing the address. Some have "pages"
	 * whose boundaries will not be crossed, but the handling
	 * of these is left to the caller, who is in a better
	 * position to know.
	 */
	while (len-- > 0) {
		/*
		 * Get and store data, sending ACK if length remaining,
		 * else STOP
		 */
		*bp++ = FUNC2(dd, !len);
	}

	ret = 0;

bail:
	return ret;
}