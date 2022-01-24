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
struct nouveau_fence {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_fence*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_fence *fence, bool intr)
{
	int ret = 0;

	while (!FUNC1(fence)) {
		if (FUNC3(jiffies, fence->timeout)) {
			ret = -EBUSY;
			break;
		}

		FUNC0(intr ?
				    TASK_INTERRUPTIBLE :
				    TASK_UNINTERRUPTIBLE);

		if (intr && FUNC2(current)) {
			ret = -ERESTARTSYS;
			break;
		}
	}

	FUNC0(TASK_RUNNING);
	return ret;
}