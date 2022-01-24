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
struct dm_writecache {int /*<<< orphan*/  freelist_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC4 (struct dm_writecache*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_writecache*) ; 

__attribute__((used)) static void FUNC6(struct dm_writecache *wc)
{
	FUNC0(wait);

	FUNC3(&wc->freelist_wait, &wait, TASK_UNINTERRUPTIBLE);
	FUNC5(wc);
	FUNC2();
	FUNC1(&wc->freelist_wait, &wait);
	FUNC4(wc);
}