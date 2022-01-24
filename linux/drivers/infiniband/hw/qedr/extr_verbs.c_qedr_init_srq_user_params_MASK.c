#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct rdma_srq_producers {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  phy_prod_pair_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  pbl_tbl; int /*<<< orphan*/  pbl_info; } ;
struct qedr_srq {TYPE_2__ hw_srq; TYPE_4__* prod_umem; int /*<<< orphan*/  dev; TYPE_3__ usrq; } ;
struct qedr_create_srq_ureq {int /*<<< orphan*/  prod_pair_addr; int /*<<< orphan*/  srq_len; int /*<<< orphan*/  srq_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_7__ {struct scatterlist* sgl; } ;
struct TYPE_10__ {TYPE_1__ sg_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (struct ib_udata*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ib_udata*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC8(struct ib_udata *udata,
				     struct qedr_srq *srq,
				     struct qedr_create_srq_ureq *ureq,
				     int access, int dmasync)
{
	struct scatterlist *sg;
	int rc;

	rc = FUNC6(udata, srq->dev, &srq->usrq, ureq->srq_addr,
				  ureq->srq_len, access, dmasync, 1);
	if (rc)
		return rc;

	srq->prod_umem =
		FUNC3(udata, ureq->prod_pair_addr,
			    sizeof(struct rdma_srq_producers), access, dmasync);
	if (FUNC1(srq->prod_umem)) {
		FUNC5(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
		FUNC4(srq->usrq.umem);
		FUNC0(srq->dev,
		       "create srq: failed ib_umem_get for producer, got %ld\n",
		       FUNC2(srq->prod_umem));
		return FUNC2(srq->prod_umem);
	}

	sg = srq->prod_umem->sg_head.sgl;
	srq->hw_srq.phy_prod_pair_addr = FUNC7(sg);

	return 0;
}