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
struct multipath {scalar_t__ queue_mode; int /*<<< orphan*/  trigger_event; int /*<<< orphan*/  process_queued_bios; int /*<<< orphan*/  flags; int /*<<< orphan*/  pg_init_in_progress; scalar_t__ hw_handler_name; } ;

/* Variables and functions */
 scalar_t__ DM_TYPE_BIO_BASED ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmpath_handlerd ; 
 int /*<<< orphan*/  FUNC4 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct multipath *m)
{
	if (m->hw_handler_name) {
		FUNC5(MPATHF_PG_INIT_DISABLED, &m->flags);
		FUNC6();

		if (FUNC0(&m->pg_init_in_progress))
			FUNC3(kmpath_handlerd);
		FUNC4(m);

		FUNC1(MPATHF_PG_INIT_DISABLED, &m->flags);
		FUNC6();
	}

	if (m->queue_mode == DM_TYPE_BIO_BASED)
		FUNC2(&m->process_queued_bios);
	FUNC2(&m->trigger_event);
}