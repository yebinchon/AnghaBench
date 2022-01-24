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
struct drm_lock_data {int user_waiters; int kernel_waiters; int /*<<< orphan*/  spinlock; TYPE_1__* hw_lock; } ;
struct TYPE_2__ {unsigned int lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int DRM_KERNEL_CONTEXT ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int _DRM_LOCK_CONT ; 
 unsigned int _DRM_LOCK_HELD ; 
 unsigned int FUNC2 (unsigned int volatile*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC5(struct drm_lock_data *lock_data,
		  unsigned int context)
{
	unsigned int old, new, prev;
	volatile unsigned int *lock = &lock_data->hw_lock->lock;

	FUNC3(&lock_data->spinlock);
	do {
		old = *lock;
		if (old & _DRM_LOCK_HELD)
			new = old | _DRM_LOCK_CONT;
		else {
			new = context | _DRM_LOCK_HELD |
				((lock_data->user_waiters + lock_data->kernel_waiters > 1) ?
				 _DRM_LOCK_CONT : 0);
		}
		prev = FUNC2(lock, old, new);
	} while (prev != old);
	FUNC4(&lock_data->spinlock);

	if (FUNC1(old) == context) {
		if (old & _DRM_LOCK_HELD) {
			if (context != DRM_KERNEL_CONTEXT) {
				FUNC0("%d holds heavyweight lock\n",
					  context);
			}
			return 0;
		}
	}

	if ((FUNC1(new)) == context && (new & _DRM_LOCK_HELD)) {
		/* Have lock */
		return 1;
	}
	return 0;
}