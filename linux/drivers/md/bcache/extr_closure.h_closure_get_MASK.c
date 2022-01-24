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
struct closure {int /*<<< orphan*/  remaining; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CLOSURE_REMAINING_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct closure *cl)
{
#ifdef CONFIG_BCACHE_CLOSURES_DEBUG
	BUG_ON((atomic_inc_return(&cl->remaining) &
		CLOSURE_REMAINING_MASK) <= 1);
#else
	FUNC1(&cl->remaining);
#endif
}