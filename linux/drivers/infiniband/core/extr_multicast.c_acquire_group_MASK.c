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
typedef  union ib_gid {int dummy; } ib_gid ;
struct mcast_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {union ib_gid mgid; } ;
struct mcast_group {int retries; int /*<<< orphan*/  refcount; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; int /*<<< orphan*/  active_list; int /*<<< orphan*/  pending_list; int /*<<< orphan*/  pkey_index; TYPE_1__ rec; struct mcast_port* port; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCAST_INVALID_PKEY_INDEX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mcast_group*) ; 
 struct mcast_group* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mcast_group* FUNC5 (struct mcast_port*,union ib_gid*) ; 
 struct mcast_group* FUNC6 (struct mcast_port*,struct mcast_group*,int) ; 
 int /*<<< orphan*/  mcast_work_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,union ib_gid*,int) ; 
 int /*<<< orphan*/  mgid0 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct mcast_group *FUNC11(struct mcast_port *port,
					 union ib_gid *mgid, gfp_t gfp_mask)
{
	struct mcast_group *group, *cur_group;
	unsigned long flags;
	int is_mgid0;

	is_mgid0 = !FUNC7(&mgid0, mgid, sizeof mgid0);
	if (!is_mgid0) {
		FUNC9(&port->lock, flags);
		group = FUNC5(port, mgid);
		if (group)
			goto found;
		FUNC10(&port->lock, flags);
	}

	group = FUNC4(sizeof *group, gfp_mask);
	if (!group)
		return NULL;

	group->retries = 3;
	group->port = port;
	group->rec.mgid = *mgid;
	group->pkey_index = MCAST_INVALID_PKEY_INDEX;
	FUNC0(&group->pending_list);
	FUNC0(&group->active_list);
	FUNC1(&group->work, mcast_work_handler);
	FUNC8(&group->lock);

	FUNC9(&port->lock, flags);
	cur_group = FUNC6(port, group, is_mgid0);
	if (cur_group) {
		FUNC3(group);
		group = cur_group;
	} else
		FUNC2(&port->refcount);
found:
	FUNC2(&group->refcount);
	FUNC10(&port->lock, flags);
	return group;
}