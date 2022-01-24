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
struct vmw_fence_manager {int /*<<< orphan*/  lock; int /*<<< orphan*/  cleanup_list; int /*<<< orphan*/  fence_list; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_fence_manager*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct vmw_fence_manager *fman)
{
	bool lists_empty;

	(void) FUNC1(&fman->work);

	FUNC4(&fman->lock);
	lists_empty = FUNC3(&fman->fence_list) &&
		FUNC3(&fman->cleanup_list);
	FUNC5(&fman->lock);

	FUNC0(!lists_empty);
	FUNC2(fman);
}