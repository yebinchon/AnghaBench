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
struct priority_group {int dummy; } ;
struct multipath {int /*<<< orphan*/  pg_init_count; int /*<<< orphan*/  flags; scalar_t__ hw_handler_name; struct priority_group* current_pg; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct multipath *m, struct priority_group *pg)
{
	m->current_pg = pg;

	/* Must we initialise the PG first, and queue I/O till it's ready? */
	if (m->hw_handler_name) {
		FUNC2(MPATHF_PG_INIT_REQUIRED, &m->flags);
		FUNC2(MPATHF_QUEUE_IO, &m->flags);
	} else {
		FUNC1(MPATHF_PG_INIT_REQUIRED, &m->flags);
		FUNC1(MPATHF_QUEUE_IO, &m->flags);
	}

	FUNC0(&m->pg_init_count, 0);
}