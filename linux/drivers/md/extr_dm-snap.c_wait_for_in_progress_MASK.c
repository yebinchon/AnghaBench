#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct dm_snapshot {scalar_t__ in_progress; TYPE_1__ in_progress_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _origins_lock ; 
 scalar_t__ cow_threshold ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static bool FUNC10(struct dm_snapshot *s, bool unlock_origins)
{
	if (FUNC8(s->in_progress > cow_threshold)) {
		FUNC6(&s->in_progress_wait.lock);
		if (FUNC4(s->in_progress > cow_threshold)) {
			/*
			 * NOTE: this throttle doesn't account for whether
			 * the caller is servicing an IO that will trigger a COW
			 * so excess throttling may result for chunks not required
			 * to be COW'd.  But if cow_threshold was reached, extra
			 * throttling is unlikely to negatively impact performance.
			 */
			FUNC0(wait, current);
			FUNC1(&s->in_progress_wait, &wait);
			FUNC2(TASK_UNINTERRUPTIBLE);
			FUNC7(&s->in_progress_wait.lock);
			if (unlock_origins)
				FUNC9(&_origins_lock);
			FUNC3();
			FUNC5(&s->in_progress_wait, &wait);
			return false;
		}
		FUNC7(&s->in_progress_wait.lock);
	}
	return true;
}