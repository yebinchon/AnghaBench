#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_lock_data {scalar_t__ kernel_waiters; int idle_has_lock; int /*<<< orphan*/  lock_queue; int /*<<< orphan*/  spinlock; TYPE_1__* hw_lock; } ;
struct TYPE_2__ {unsigned int lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int volatile*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_lock_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct drm_lock_data *lock_data,
				unsigned int context)
{
	unsigned int old, new, prev;
	volatile unsigned int *lock = &lock_data->hw_lock->lock;

	FUNC5(&lock_data->spinlock);
	if (lock_data->kernel_waiters != 0) {
		FUNC4(lock_data, 0);
		lock_data->idle_has_lock = 1;
		FUNC6(&lock_data->spinlock);
		return 1;
	}
	FUNC6(&lock_data->spinlock);

	do {
		old = *lock;
		new = FUNC1(old);
		prev = FUNC3(lock, old, new);
	} while (prev != old);

	if (FUNC2(old) && FUNC1(old) != context) {
		FUNC0("%d freed heavyweight lock held by %d\n",
			  context, FUNC1(old));
		return 1;
	}
	FUNC7(&lock_data->lock_queue);
	return 0;
}