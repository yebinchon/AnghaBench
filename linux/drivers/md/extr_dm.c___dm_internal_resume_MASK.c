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
struct mapped_device {int /*<<< orphan*/  flags; scalar_t__ internal_suspend_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMF_SUSPENDED_INTERNALLY ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mapped_device *md)
{
	FUNC0(!md->internal_suspend_count);

	if (--md->internal_suspend_count)
		return; /* resume from nested internal suspend */

	if (FUNC3(md))
		goto done; /* resume from nested suspend */

	/*
	 * NOTE: existing callers don't need to call dm_table_resume_targets
	 * (which may fail -- so best to avoid it for now by passing NULL map)
	 */
	(void) FUNC1(md, NULL);

done:
	FUNC2(DMF_SUSPENDED_INTERNALLY, &md->flags);
	FUNC4();
	FUNC5(&md->flags, DMF_SUSPENDED_INTERNALLY);
}