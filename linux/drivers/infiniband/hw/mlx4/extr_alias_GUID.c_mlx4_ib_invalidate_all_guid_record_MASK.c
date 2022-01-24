#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ag_work_lock; TYPE_1__* ports_guid; } ;
struct TYPE_6__ {int /*<<< orphan*/  going_down_lock; TYPE_2__ alias_guid; int /*<<< orphan*/  is_going_down; } ;
struct mlx4_ib_dev {TYPE_3__ sriov; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int state_flags; int /*<<< orphan*/  alias_guid_work; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int GUID_STATE_NEED_PORT_INIT ; 
 int NUM_ALIAS_GUID_REC_IN_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_ib_dev*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct mlx4_ib_dev *dev, int port)
{
	int i;
	unsigned long flags, flags1;

	FUNC4("port %d\n", port);

	FUNC6(&dev->sriov.going_down_lock, flags);
	FUNC6(&dev->sriov.alias_guid.ag_work_lock, flags1);

	if (dev->sriov.alias_guid.ports_guid[port - 1].state_flags &
		GUID_STATE_NEED_PORT_INIT) {
		FUNC2(dev, port);
		dev->sriov.alias_guid.ports_guid[port - 1].state_flags &=
			(~GUID_STATE_NEED_PORT_INIT);
	}
	for (i = 0; i < NUM_ALIAS_GUID_REC_IN_PORT; i++)
		FUNC1(dev, port, i);

	if (FUNC3(dev->dev) && !dev->sriov.is_going_down) {
		/*
		make sure no work waits in the queue, if the work is already
		queued(not on the timer) the cancel will fail. That is not a problem
		because we just want the work started.
		*/
		FUNC0(&dev->sriov.alias_guid.
				      ports_guid[port - 1].alias_guid_work);
		FUNC5(dev->sriov.alias_guid.ports_guid[port - 1].wq,
				   &dev->sriov.alias_guid.ports_guid[port - 1].alias_guid_work,
				   0);
	}
	FUNC7(&dev->sriov.alias_guid.ag_work_lock, flags1);
	FUNC7(&dev->sriov.going_down_lock, flags);
}