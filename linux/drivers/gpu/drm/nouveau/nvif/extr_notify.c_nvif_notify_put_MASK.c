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
struct nvif_notify {int /*<<< orphan*/  work; int /*<<< orphan*/  flags; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVIF_NOTIFY_USER ; 
 int /*<<< orphan*/  NVIF_NOTIFY_WORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nvif_notify*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct nvif_notify *notify)
{
	if (FUNC1(notify->object) &&
	    FUNC3(NVIF_NOTIFY_USER, &notify->flags)) {
		int ret = FUNC2(notify);
		if (FUNC4(NVIF_NOTIFY_WORK, &notify->flags))
			FUNC0(&notify->work);
		return ret;
	}
	return 0;
}