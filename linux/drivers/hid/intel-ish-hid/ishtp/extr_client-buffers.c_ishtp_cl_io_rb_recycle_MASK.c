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
struct ishtp_cl {int /*<<< orphan*/  out_flow_ctrl_creds; int /*<<< orphan*/  free_list_spinlock; TYPE_1__ free_rb_list; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct ishtp_cl_rb *rb)
{
	struct ishtp_cl *cl;
	int	rets = 0;
	unsigned long	flags;

	if (!rb || !rb->cl)
		return	-EFAULT;

	cl = rb->cl;
	FUNC2(&cl->free_list_spinlock, flags);
	FUNC1(&rb->list, &cl->free_rb_list.list);
	FUNC3(&cl->free_list_spinlock, flags);

	/*
	 * If we returned the first buffer to empty 'free' list,
	 * send flow control
	 */
	if (!cl->out_flow_ctrl_creds)
		rets = FUNC0(cl);

	return	rets;
}