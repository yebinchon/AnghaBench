#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocrdma_pd {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int remote_wr; int remote_rd; int local_wr; int local_rd; int remote_atomic; int /*<<< orphan*/  lkey; void* len; void* va; int /*<<< orphan*/  fbo; int /*<<< orphan*/  pbe_size; } ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct ocrdma_mr {TYPE_1__ hwmr; struct ib_mr ibmr; int /*<<< orphan*/  umem; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_ATOMIC ; 
 int IB_ACCESS_REMOTE_READ ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_dev*,struct ocrdma_mr*,int /*<<< orphan*/ ) ; 
 struct ocrdma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ocrdma_pd* FUNC4 (struct ib_pd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_udata*,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ocrdma_mr*) ; 
 struct ocrdma_mr* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ocrdma_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocrdma_dev*,TYPE_1__*) ; 
 int FUNC12 (struct ocrdma_dev*,struct ocrdma_mr*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ocrdma_dev*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

struct ib_mr *FUNC14(struct ib_pd *ibpd, u64 start, u64 len,
				 u64 usr_addr, int acc, struct ib_udata *udata)
{
	int status = -ENOMEM;
	struct ocrdma_dev *dev = FUNC3(ibpd->device);
	struct ocrdma_mr *mr;
	struct ocrdma_pd *pd;
	u32 num_pbes;

	pd = FUNC4(ibpd);

	if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE))
		return FUNC0(-EINVAL);

	mr = FUNC9(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(status);
	mr->umem = FUNC5(udata, start, len, acc, 0);
	if (FUNC1(mr->umem)) {
		status = -EFAULT;
		goto umem_err;
	}
	num_pbes = FUNC7(mr->umem);
	status = FUNC12(dev, mr, num_pbes);
	if (status)
		goto umem_err;

	mr->hwmr.pbe_size = PAGE_SIZE;
	mr->hwmr.fbo = FUNC6(mr->umem);
	mr->hwmr.va = usr_addr;
	mr->hwmr.len = len;
	mr->hwmr.remote_wr = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
	mr->hwmr.remote_rd = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
	mr->hwmr.local_wr = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
	mr->hwmr.local_rd = 1;
	mr->hwmr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
	status = FUNC10(dev, &mr->hwmr);
	if (status)
		goto umem_err;
	FUNC2(dev, mr, num_pbes);
	status = FUNC13(dev, &mr->hwmr, pd->id, acc);
	if (status)
		goto mbx_err;
	mr->ibmr.lkey = mr->hwmr.lkey;
	if (mr->hwmr.remote_wr || mr->hwmr.remote_rd)
		mr->ibmr.rkey = mr->hwmr.lkey;

	return &mr->ibmr;

mbx_err:
	FUNC11(dev, &mr->hwmr);
umem_err:
	FUNC8(mr);
	return FUNC0(status);
}