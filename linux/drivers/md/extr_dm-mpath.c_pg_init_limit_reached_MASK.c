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
struct pgpath {int dummy; } ;
struct multipath {scalar_t__ pg_init_retries; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  pg_init_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPATHF_PG_INIT_DISABLED ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct multipath *m, struct pgpath *pgpath)
{
	unsigned long flags;
	bool limit_reached = false;

	FUNC2(&m->lock, flags);

	if (FUNC0(&m->pg_init_count) <= m->pg_init_retries &&
	    !FUNC4(MPATHF_PG_INIT_DISABLED, &m->flags))
		FUNC1(MPATHF_PG_INIT_REQUIRED, &m->flags);
	else
		limit_reached = true;

	FUNC3(&m->lock, flags);

	return limit_reached;
}