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
struct pblk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct pblk*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void *data)
{
	struct pblk *pblk = data;
	int secs_left;
	int write_failure = 0;

	while (!FUNC1()) {
		if (!write_failure) {
			write_failure = FUNC2(pblk, &secs_left);

			if (secs_left)
				continue;
		}
		FUNC3(TASK_INTERRUPTIBLE);
		FUNC0();
	}

	return 0;
}