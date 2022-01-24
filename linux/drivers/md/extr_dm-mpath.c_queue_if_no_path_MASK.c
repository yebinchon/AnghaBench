#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct multipath {TYPE_1__* ti; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 int /*<<< orphan*/  MPATHF_SAVED_QUEUE_IF_NO_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct multipath *m, bool queue_if_no_path,
			    bool save_old_value)
{
	unsigned long flags;

	FUNC3(&m->lock, flags);
	FUNC0(MPATHF_SAVED_QUEUE_IF_NO_PATH, &m->flags,
		   (save_old_value && FUNC5(MPATHF_QUEUE_IF_NO_PATH, &m->flags)) ||
		   (!save_old_value && queue_if_no_path));
	FUNC0(MPATHF_QUEUE_IF_NO_PATH, &m->flags, queue_if_no_path);
	FUNC4(&m->lock, flags);

	if (!queue_if_no_path) {
		FUNC1(m->ti->table);
		FUNC2(m);
	}

	return 0;
}