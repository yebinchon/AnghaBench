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
typedef  int /*<<< orphan*/  uresp ;
struct qedr_qp {int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; } ;
struct qedr_dev {scalar_t__ atomic_cap; } ;
struct qedr_create_qp_uresp {int atomic_supported; int /*<<< orphan*/  qp_id; } ;
struct ib_udata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IB_ATOMIC_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_create_qp_uresp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qedr_dev*,struct qedr_create_qp_uresp*,struct qedr_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct qedr_dev*,struct qedr_create_qp_uresp*,struct qedr_qp*) ; 
 int FUNC4 (struct ib_udata*,struct qedr_create_qp_uresp*,int) ; 

__attribute__((used)) static int FUNC5(struct qedr_dev *dev,
			      struct qedr_qp *qp, struct ib_udata *udata)
{
	struct qedr_create_qp_uresp uresp;
	int rc;

	FUNC1(&uresp, 0, sizeof(uresp));
	FUNC3(dev, &uresp, qp);
	FUNC2(dev, &uresp, qp);

	uresp.atomic_supported = dev->atomic_cap != IB_ATOMIC_NONE;
	uresp.qp_id = qp->qp_id;

	rc = FUNC4(udata, &uresp, sizeof(uresp));
	if (rc)
		FUNC0(dev,
		       "create qp: failed a copy to user space with qp icid=0x%x.\n",
		       qp->icid);

	return rc;
}