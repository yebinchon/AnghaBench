#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ib_cq {int /*<<< orphan*/  device; } ;
typedef  enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_4__ {int /*<<< orphan*/  mcq; } ;
struct TYPE_3__ {int /*<<< orphan*/  uar_lock; int /*<<< orphan*/  uar_map; } ;

/* Variables and functions */
 int IB_CQ_SOLICITED ; 
 int IB_CQ_SOLICITED_MASK ; 
 int /*<<< orphan*/  MLX4_CQ_DB_REQ_NOT ; 
 int /*<<< orphan*/  MLX4_CQ_DB_REQ_NOT_SOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct ib_cq*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
	FUNC1(&FUNC2(ibcq)->mcq,
		    (flags & IB_CQ_SOLICITED_MASK) == IB_CQ_SOLICITED ?
		    MLX4_CQ_DB_REQ_NOT_SOL : MLX4_CQ_DB_REQ_NOT,
		    FUNC3(ibcq->device)->uar_map,
		    FUNC0(&FUNC3(ibcq->device)->uar_lock));

	return 0;
}