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
struct i2c_au1550_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PSC_SMBTXRX ; 
 int /*<<< orphan*/  PSC_SMBTXRX_STP ; 
 int FUNC0 (struct i2c_au1550_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_au1550_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i2c_au1550_data*,unsigned char*) ; 
 scalar_t__ FUNC3 (struct i2c_au1550_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_au1550_data *adap, unsigned char *buf,
		    unsigned int len)
{
	int i;

	if (len == 0)
		return 0;

	/* A read is performed by stuffing the transmit fifo with
	 * zero bytes for timing, waiting for bytes to appear in the
	 * receive fifo, then reading the bytes.
	 */
	i = 0;
	while (i < (len - 1)) {
		FUNC1(adap, PSC_SMBTXRX, 0);
		if (FUNC2(adap, &buf[i]))
			return -EIO;

		i++;
	}

	/* The last byte has to indicate transfer done. */
	FUNC1(adap, PSC_SMBTXRX, PSC_SMBTXRX_STP);
	if (FUNC3(adap))
		return -EIO;

	buf[i] = (unsigned char)(FUNC0(adap, PSC_SMBTXRX) & 0xff);
	return 0;
}