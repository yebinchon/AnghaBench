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
struct ishtp_cl_rb {int /*<<< orphan*/  list; struct ishtp_cl* cl; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ishtp_cl {int /*<<< orphan*/  device; int /*<<< orphan*/  in_process_spinlock; TYPE_1__ in_process_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct ishtp_cl_rb *rb)
{
	unsigned long	flags;
	int	schedule_work_flag = 0;
	struct ishtp_cl	*cl = rb->cl;

	FUNC3(&cl->in_process_spinlock, flags);
	/*
	 * if in-process list is empty, then need to schedule
	 * the processing thread
	 */
	schedule_work_flag = FUNC2(&cl->in_process_list.list);
	FUNC1(&rb->list, &cl->in_process_list.list);
	FUNC4(&cl->in_process_spinlock, flags);

	if (schedule_work_flag)
		FUNC0(cl->device);
}