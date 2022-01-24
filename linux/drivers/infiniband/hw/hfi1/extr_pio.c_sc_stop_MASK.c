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
struct send_context {int flags; int /*<<< orphan*/  halt_wait; int /*<<< orphan*/  alloc_lock; } ;

/* Variables and functions */
 int SCF_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct send_context *sc, int flag)
{
	unsigned long flags;

	/* stop buffer allocations */
	FUNC0(&sc->alloc_lock, flags);
	/* mark the context */
	sc->flags |= flag;
	sc->flags &= ~SCF_ENABLED;
	FUNC1(&sc->alloc_lock, flags);
	FUNC2(&sc->halt_wait);
}