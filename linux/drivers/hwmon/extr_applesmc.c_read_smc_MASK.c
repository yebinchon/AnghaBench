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

/* Variables and functions */
 int /*<<< orphan*/  APPLESMC_CMD_PORT ; 
 int /*<<< orphan*/  APPLESMC_DATA_PORT ; 
 int /*<<< orphan*/  APPLESMC_MIN_WAIT ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(u8 cmd, const char *key, u8 *buffer, u8 len)
{
	u8 status, data = 0;
	int i;

	if (FUNC4(cmd) || FUNC2(key)) {
		FUNC1("%.4s: read arg fail\n", key);
		return -EIO;
	}

	/* This has no effect on newer (2012) SMCs */
	if (FUNC3(len, APPLESMC_DATA_PORT)) {
		FUNC1("%.4s: read len fail\n", key);
		return -EIO;
	}

	for (i = 0; i < len; i++) {
		if (FUNC6()) {
			FUNC1("%.4s: read data[%d] fail\n", key, i);
			return -EIO;
		}
		buffer[i] = FUNC0(APPLESMC_DATA_PORT);
	}

	/* Read the data port until bit0 is cleared */
	for (i = 0; i < 16; i++) {
		FUNC5(APPLESMC_MIN_WAIT);
		status = FUNC0(APPLESMC_CMD_PORT);
		if (!(status & 0x01))
			break;
		data = FUNC0(APPLESMC_DATA_PORT);
	}
	if (i)
		FUNC1("flushed %d bytes, last value is: %d\n", i, data);

	return 0;
}