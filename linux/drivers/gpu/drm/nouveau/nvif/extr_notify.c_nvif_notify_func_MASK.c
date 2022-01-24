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
struct nvif_notify {int (* func ) (struct nvif_notify*) ;int /*<<< orphan*/  putcnt; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int NVIF_NOTIFY_KEEP ; 
 int /*<<< orphan*/  NVIF_NOTIFY_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvif_notify*) ; 
 int FUNC2 (struct nvif_notify*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC4(struct nvif_notify *notify, bool keep)
{
	int ret = notify->func(notify);
	if (ret == NVIF_NOTIFY_KEEP ||
	    !FUNC3(NVIF_NOTIFY_USER, &notify->flags)) {
		if (!keep)
			FUNC0(&notify->putcnt);
		else
			FUNC1(notify);
	}
	return ret;
}