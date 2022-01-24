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
 int ETIME ; 
 scalar_t__ halt_if_hws_hang ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

int FUNC4(unsigned int *fence_addr,
				unsigned int fence_value,
				unsigned int timeout_ms)
{
	unsigned long end_jiffies = FUNC0(timeout_ms) + jiffies;

	while (*fence_addr != fence_value) {
		if (FUNC3(jiffies, end_jiffies)) {
			FUNC1("qcm fence wait loop timeout expired\n");
			/* In HWS case, this is used to halt the driver thread
			 * in order not to mess up CP states before doing
			 * scandumps for FW debugging.
			 */
			while (halt_if_hws_hang)
				FUNC2();

			return -ETIME;
		}
		FUNC2();
	}

	return 0;
}