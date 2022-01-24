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
struct sony_sc {int /*<<< orphan*/  hotplug_worker; int /*<<< orphan*/  hotplug_worker_initialized; int /*<<< orphan*/  lock; int /*<<< orphan*/  state_worker; int /*<<< orphan*/  state_worker_initialized; int /*<<< orphan*/  defer_initialization; } ;
typedef  enum sony_worker { ____Placeholder_sony_worker } sony_worker ;

/* Variables and functions */
#define  SONY_WORKER_HOTPLUG 129 
#define  SONY_WORKER_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct sony_sc *sc,
				      enum sony_worker which)
{
	unsigned long flags;

	switch (which) {
	case SONY_WORKER_STATE:
		FUNC1(&sc->lock, flags);
		if (!sc->defer_initialization && sc->state_worker_initialized)
			FUNC0(&sc->state_worker);
		FUNC2(&sc->lock, flags);
		break;
	case SONY_WORKER_HOTPLUG:
		if (sc->hotplug_worker_initialized)
			FUNC0(&sc->hotplug_worker);
		break;
	}
}