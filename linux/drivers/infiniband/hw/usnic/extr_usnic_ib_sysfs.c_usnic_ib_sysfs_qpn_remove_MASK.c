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
struct usnic_ib_qp_grp {int /*<<< orphan*/  kobj; TYPE_1__* vf; } ;
struct usnic_ib_dev {int /*<<< orphan*/ * qpn_kobj; } ;
struct TYPE_2__ {struct usnic_ib_dev* pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct usnic_ib_qp_grp *qp_grp)
{
	struct usnic_ib_dev *us_ibdev;

	us_ibdev = qp_grp->vf->pf;

	FUNC0(&qp_grp->kobj);
	FUNC0(us_ibdev->qpn_kobj);
}