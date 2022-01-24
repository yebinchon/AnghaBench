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
struct mddev {int /*<<< orphan*/  sb_wait; scalar_t__ suspended; int /*<<< orphan*/  active_io; TYPE_1__* pers; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* make_request ) (struct mddev*,struct bio*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct mddev *mddev, struct bio *bio)
{
check_suspended:
	FUNC7();
	if (FUNC5(mddev, bio)) {
		FUNC0(__wait);
		for (;;) {
			FUNC6(&mddev->sb_wait, &__wait,
					TASK_UNINTERRUPTIBLE);
			if (!FUNC5(mddev, bio))
				break;
			FUNC8();
			FUNC9();
			FUNC7();
		}
		FUNC4(&mddev->sb_wait, &__wait);
	}
	FUNC3(&mddev->active_io);
	FUNC8();

	if (!mddev->pers->make_request(mddev, bio)) {
		FUNC1(&mddev->active_io);
		FUNC11(&mddev->sb_wait);
		goto check_suspended;
	}

	if (FUNC2(&mddev->active_io) && mddev->suspended)
		FUNC11(&mddev->sb_wait);
}