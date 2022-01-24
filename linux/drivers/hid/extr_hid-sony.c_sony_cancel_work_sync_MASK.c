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
struct sony_sc {int /*<<< orphan*/  state_worker; int /*<<< orphan*/  lock; scalar_t__ state_worker_initialized; int /*<<< orphan*/  hotplug_worker; scalar_t__ hotplug_worker_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct sony_sc *sc)
{
	unsigned long flags;

	if (sc->hotplug_worker_initialized)
		FUNC0(&sc->hotplug_worker);
	if (sc->state_worker_initialized) {
		FUNC1(&sc->lock, flags);
		sc->state_worker_initialized = 0;
		FUNC2(&sc->lock, flags);
		FUNC0(&sc->state_worker);
	}
}