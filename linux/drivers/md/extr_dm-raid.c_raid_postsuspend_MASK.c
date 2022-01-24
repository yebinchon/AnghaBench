#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  recovery; } ;
struct raid_set {TYPE_1__ md; int /*<<< orphan*/  runtime_flags; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  RT_FLAG_RS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct dm_target *ti)
{
	struct raid_set *rs = ti->private;

	if (!FUNC4(RT_FLAG_RS_SUSPENDED, &rs->runtime_flags)) {
		/* Writes have to be stopped before suspending to avoid deadlocks. */
		if (!FUNC5(MD_RECOVERY_FROZEN, &rs->md.recovery))
			FUNC0(&rs->md);

		FUNC1(&rs->md);
		FUNC2(&rs->md);
		FUNC3(&rs->md);
	}
}