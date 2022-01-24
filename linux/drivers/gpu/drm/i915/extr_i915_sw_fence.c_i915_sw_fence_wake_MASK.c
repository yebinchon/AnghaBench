#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  private; int /*<<< orphan*/  entry; } ;
typedef  TYPE_1__ wait_queue_entry_t ;

/* Variables and functions */
 int I915_SW_FENCE_FLAG_ALLOC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(wait_queue_entry_t *wq, unsigned mode, int flags, void *key)
{
	FUNC1(wq->private, flags);

	FUNC3(&wq->entry);
	FUNC0(wq->private, key);

	if (wq->flags & I915_SW_FENCE_FLAG_ALLOC)
		FUNC2(wq);
	return 0;
}