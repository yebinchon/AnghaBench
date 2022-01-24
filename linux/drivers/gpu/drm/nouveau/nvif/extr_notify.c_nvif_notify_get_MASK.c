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
struct nvif_notify {int /*<<< orphan*/  flags; int /*<<< orphan*/  object; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVIF_NOTIFY_USER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nvif_notify*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC3(struct nvif_notify *notify)
{
	if (FUNC0(notify->object) &&
	    !FUNC2(NVIF_NOTIFY_USER, &notify->flags))
		return FUNC1(notify);
	return 0;
}