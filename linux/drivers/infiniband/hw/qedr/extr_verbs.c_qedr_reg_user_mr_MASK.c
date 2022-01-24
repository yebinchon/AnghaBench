#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct qedr_pd {int /*<<< orphan*/  pd_id; } ;
struct TYPE_11__ {int /*<<< orphan*/  pbl_size; int /*<<< orphan*/  two_layered; } ;
struct TYPE_12__ {TYPE_3__* pbl_table; TYPE_4__ pbl_info; } ;
struct TYPE_9__ {int itid; int key; int local_read; int local_write; int remote_read; int remote_write; int remote_atomic; int mw_bind; int zbva; int phy_mr; int dma_mr; void* vaddr; void* length; int /*<<< orphan*/  fbo; int /*<<< orphan*/  page_size_log; int /*<<< orphan*/  pbl_page_size_log; int /*<<< orphan*/  pbl_two_level; int /*<<< orphan*/  pbl_ptr; int /*<<< orphan*/  pd; int /*<<< orphan*/  tid_type; } ;
struct ib_mr {int lkey; int rkey; } ;
struct qedr_mr {TYPE_7__ info; TYPE_2__ hw_mr; struct ib_mr ibmr; int /*<<< orphan*/  umem; int /*<<< orphan*/  type; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_10__ {int /*<<< orphan*/  pa; } ;
struct TYPE_8__ {int (* rdma_alloc_tid ) (int /*<<< orphan*/ ,int*) ;int (* rdma_register_tid ) (int /*<<< orphan*/ ,TYPE_2__*) ;int /*<<< orphan*/  (* rdma_free_tid ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,int) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  QEDR_MR_USER ; 
 int /*<<< orphan*/  QEDR_MSG_MR ; 
 int /*<<< orphan*/  QED_RDMA_TID_REGISTERED_MR ; 
 struct qedr_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct qedr_pd* FUNC5 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_udata*,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qedr_dev*,TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qedr_mr*) ; 
 struct qedr_mr* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qedr_dev*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct qedr_dev*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

struct ib_mr *FUNC18(struct ib_pd *ibpd, u64 start, u64 len,
			       u64 usr_addr, int acc, struct ib_udata *udata)
{
	struct qedr_dev *dev = FUNC4(ibpd->device);
	struct qedr_mr *mr;
	struct qedr_pd *pd;
	int rc = -ENOMEM;

	pd = FUNC5(ibpd);
	FUNC0(dev, QEDR_MSG_MR,
		 "qedr_register user mr pd = %d start = %lld, len = %lld, usr_addr = %lld, acc = %d\n",
		 pd->pd_id, start, len, usr_addr, acc);

	if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE))
		return FUNC2(-EINVAL);

	mr = FUNC12(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC2(rc);

	mr->type = QEDR_MR_USER;

	mr->umem = FUNC6(udata, start, len, acc, 0);
	if (FUNC3(mr->umem)) {
		rc = -EFAULT;
		goto err0;
	}

	rc = FUNC10(dev, &mr->info, FUNC8(mr->umem), 1);
	if (rc)
		goto err1;

	FUNC14(dev, mr->umem, mr->info.pbl_table,
			   &mr->info.pbl_info, PAGE_SHIFT);

	rc = dev->ops->rdma_alloc_tid(dev->rdma_ctx, &mr->hw_mr.itid);
	if (rc) {
		FUNC1(dev, "roce alloc tid returned an error %d\n", rc);
		goto err1;
	}

	/* Index only, 18 bit long, lkey = itid << 8 | key */
	mr->hw_mr.tid_type = QED_RDMA_TID_REGISTERED_MR;
	mr->hw_mr.key = 0;
	mr->hw_mr.pd = pd->pd_id;
	mr->hw_mr.local_read = 1;
	mr->hw_mr.local_write = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
	mr->hw_mr.remote_read = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
	mr->hw_mr.remote_write = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
	mr->hw_mr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
	mr->hw_mr.mw_bind = false;
	mr->hw_mr.pbl_ptr = mr->info.pbl_table[0].pa;
	mr->hw_mr.pbl_two_level = mr->info.pbl_info.two_layered;
	mr->hw_mr.pbl_page_size_log = FUNC9(mr->info.pbl_info.pbl_size);
	mr->hw_mr.page_size_log = PAGE_SHIFT;
	mr->hw_mr.fbo = FUNC7(mr->umem);
	mr->hw_mr.length = len;
	mr->hw_mr.vaddr = usr_addr;
	mr->hw_mr.zbva = false;
	mr->hw_mr.phy_mr = false;
	mr->hw_mr.dma_mr = false;

	rc = dev->ops->rdma_register_tid(dev->rdma_ctx, &mr->hw_mr);
	if (rc) {
		FUNC1(dev, "roce register tid returned an error %d\n", rc);
		goto err2;
	}

	mr->ibmr.lkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;
	if (mr->hw_mr.remote_write || mr->hw_mr.remote_read ||
	    mr->hw_mr.remote_atomic)
		mr->ibmr.rkey = mr->hw_mr.itid << 8 | mr->hw_mr.key;

	FUNC0(dev, QEDR_MSG_MR, "register user mr lkey: %x\n",
		 mr->ibmr.lkey);
	return &mr->ibmr;

err2:
	dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);
err1:
	FUNC13(dev, &mr->info.pbl_info, mr->info.pbl_table);
err0:
	FUNC11(mr);
	return FUNC2(rc);
}