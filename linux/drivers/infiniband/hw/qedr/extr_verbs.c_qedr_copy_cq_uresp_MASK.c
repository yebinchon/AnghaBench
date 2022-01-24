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
struct qedr_dev {int dummy; } ;
struct qedr_create_cq_uresp {int /*<<< orphan*/  icid; int /*<<< orphan*/  db_offset; } ;
struct qedr_cq {int /*<<< orphan*/  icid; } ;
struct ib_udata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT ; 
 int /*<<< orphan*/  FUNC2 (struct qedr_create_cq_uresp*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ib_udata*,struct qedr_create_cq_uresp*,int) ; 

__attribute__((used)) static int FUNC4(struct qedr_dev *dev,
			      struct qedr_cq *cq, struct ib_udata *udata)
{
	struct qedr_create_cq_uresp uresp;
	int rc;

	FUNC2(&uresp, 0, sizeof(uresp));

	uresp.db_offset = FUNC0(DQ_PWM_OFFSET_UCM_RDMA_CQ_CONS_32BIT);
	uresp.icid = cq->icid;

	rc = FUNC3(udata, &uresp, sizeof(uresp));
	if (rc)
		FUNC1(dev, "copy error cqid=0x%x.\n", cq->icid);

	return rc;
}