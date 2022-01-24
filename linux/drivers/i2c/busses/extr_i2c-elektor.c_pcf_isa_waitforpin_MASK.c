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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ irq ; 
 int /*<<< orphan*/  lock ; 
 int pcf_pending ; 
 int /*<<< orphan*/  pcf_wait ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC7(void *data)
{
	FUNC0(wait);
	int timeout = 2;
	unsigned long flags;

	if (irq > 0) {
		FUNC4(&lock, flags);
		if (pcf_pending == 0) {
			FUNC5(&lock, flags);
			FUNC2(&pcf_wait, &wait, TASK_INTERRUPTIBLE);
			if (FUNC3(timeout*HZ)) {
				FUNC4(&lock, flags);
				if (pcf_pending == 1) {
					pcf_pending = 0;
				}
				FUNC5(&lock, flags);
			}
			FUNC1(&pcf_wait, &wait);
		} else {
			pcf_pending = 0;
			FUNC5(&lock, flags);
		}
	} else {
		FUNC6(100);
	}
}