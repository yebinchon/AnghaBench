#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_4__ {TYPE_2__ lock; int /*<<< orphan*/  requests; } ;
struct intel_engine_cs {TYPE_1__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(struct intel_engine_cs *engine, unsigned int subclass)
{
	FUNC0(&engine->active.requests);

	FUNC6(&engine->active.lock);
	FUNC5(&engine->active.lock, subclass);

	/*
	 * Due to an interesting quirk in lockdep's internal debug tracking,
	 * after setting a subclass we must ensure the lock is used. Otherwise,
	 * nr_unused_locks is incremented once too often.
	 */
#ifdef CONFIG_DEBUG_LOCK_ALLOC
	local_irq_disable();
	lock_map_acquire(&engine->active.lock.dep_map);
	lock_map_release(&engine->active.lock.dep_map);
	local_irq_enable();
#endif
}