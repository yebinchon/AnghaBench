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
struct priority_group {int bypassed; } ;
struct multipath {int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  lock; int /*<<< orphan*/ * current_pg; int /*<<< orphan*/ * current_pgpath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct multipath *m, struct priority_group *pg,
		      bool bypassed)
{
	unsigned long flags;

	FUNC1(&m->lock, flags);

	pg->bypassed = bypassed;
	m->current_pgpath = NULL;
	m->current_pg = NULL;

	FUNC2(&m->lock, flags);

	FUNC0(&m->trigger_event);
}