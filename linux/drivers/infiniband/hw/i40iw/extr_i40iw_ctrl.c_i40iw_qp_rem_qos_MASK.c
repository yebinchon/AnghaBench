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
struct i40iw_sc_vsi {TYPE_1__* qos; } ;
struct i40iw_sc_qp {size_t user_pri; int /*<<< orphan*/  list; int /*<<< orphan*/  on_qoslist; struct i40iw_sc_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct i40iw_sc_qp *qp)
{
	struct i40iw_sc_vsi *vsi = qp->vsi;
	unsigned long flags;

	if (!qp->on_qoslist)
		return;
	FUNC1(&vsi->qos[qp->user_pri].lock, flags);
	FUNC0(&qp->list);
	FUNC2(&vsi->qos[qp->user_pri].lock, flags);
}