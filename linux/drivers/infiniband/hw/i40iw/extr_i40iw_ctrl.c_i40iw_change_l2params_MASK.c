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
typedef  scalar_t__ u16 ;
struct i40iw_sc_vsi {scalar_t__ mtu; TYPE_1__* qos; struct i40iw_sc_dev* dev; } ;
struct i40iw_sc_qp {scalar_t__ qs_handle; } ;
struct i40iw_sc_dev {int dummy; } ;
struct i40iw_l2params {scalar_t__ mtu; scalar_t__* qs_handle_list; } ;
struct TYPE_2__ {scalar_t__ qs_handle; int /*<<< orphan*/  lock; int /*<<< orphan*/  qplist; } ;

/* Variables and functions */
 int I40IW_MAX_USER_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 struct i40iw_sc_qp* FUNC1 (int /*<<< orphan*/ *,struct i40iw_sc_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_sc_dev*,struct i40iw_sc_qp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40iw_sc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct i40iw_sc_vsi *vsi, struct i40iw_l2params *l2params)
{
	struct i40iw_sc_dev *dev = vsi->dev;
	struct i40iw_sc_qp *qp = NULL;
	bool qs_handle_change = false;
	unsigned long flags;
	u16 qs_handle;
	int i;

	if (vsi->mtu != l2params->mtu) {
		vsi->mtu = l2params->mtu;
		FUNC3(dev);
	}

	FUNC0(l2params->qs_handle_list);
	for (i = 0; i < I40IW_MAX_USER_PRIORITY; i++) {
		qs_handle = l2params->qs_handle_list[i];
		if (vsi->qos[i].qs_handle != qs_handle)
			qs_handle_change = true;
		FUNC4(&vsi->qos[i].lock, flags);
		qp = FUNC1(&vsi->qos[i].qplist, qp);
		while (qp) {
			if (qs_handle_change) {
				qp->qs_handle = qs_handle;
				/* issue cqp suspend command */
				FUNC2(dev, qp, true);
			}
			qp = FUNC1(&vsi->qos[i].qplist, qp);
		}
		FUNC5(&vsi->qos[i].lock, flags);
		vsi->qos[i].qs_handle = qs_handle;
	}
}