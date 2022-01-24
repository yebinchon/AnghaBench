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

/* Variables and functions */
 int INIT_TIMEOUT_MSECS ; 
 scalar_t__ INIT_WAIT_MSECS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ms, ret;

	for (ms = 0; ms < INIT_TIMEOUT_MSECS; ms += INIT_WAIT_MSECS) {
		ret = FUNC1();
		if (!ret) {
			if (ms)
				FUNC3("init_smcreg() took %d ms\n", ms);
			return 0;
		}
		FUNC2(INIT_WAIT_MSECS);
	}

	FUNC0();

	return ret;
}