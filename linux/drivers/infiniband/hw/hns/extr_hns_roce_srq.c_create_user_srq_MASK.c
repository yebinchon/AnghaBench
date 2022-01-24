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
typedef  int /*<<< orphan*/  ucmd ;
typedef  int u32 ;
struct ib_udata {int dummy; } ;
struct TYPE_6__ {int buf_size; void* umem; int /*<<< orphan*/  mtt; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct hns_roce_srq {void* umem; int /*<<< orphan*/  mtt; TYPE_3__ idx_que; TYPE_1__ ibsrq; } ;
struct hns_roce_ib_create_srq {int /*<<< orphan*/  que_addr; int /*<<< orphan*/  buf_addr; } ;
struct TYPE_5__ {int srqwqe_buf_pg_sz; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; TYPE_2__ caps; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (void*) ; 
 int PAGE_SHIFT ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct hns_roce_dev*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hns_roce_dev*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct hns_roce_ib_create_srq*,struct ib_udata*,int) ; 
 void* FUNC7 (struct ib_udata*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 struct hns_roce_dev* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct hns_roce_srq *srq, struct ib_udata *udata,
			   int srq_buf_size)
{
	struct hns_roce_dev *hr_dev = FUNC10(srq->ibsrq.device);
	struct hns_roce_ib_create_srq  ucmd;
	u32 page_shift;
	u32 npages;
	int ret;

	if (FUNC6(&ucmd, udata, sizeof(ucmd)))
		return -EFAULT;

	srq->umem = FUNC7(udata, ucmd.buf_addr, srq_buf_size, 0, 0);
	if (FUNC0(srq->umem))
		return FUNC1(srq->umem);

	npages = (FUNC8(srq->umem) +
		(1 << hr_dev->caps.srqwqe_buf_pg_sz) - 1) /
		(1 << hr_dev->caps.srqwqe_buf_pg_sz);
	page_shift = PAGE_SHIFT + hr_dev->caps.srqwqe_buf_pg_sz;
	ret = FUNC5(hr_dev, npages, page_shift, &srq->mtt);
	if (ret)
		goto err_user_buf;

	ret = FUNC3(hr_dev, &srq->mtt, srq->umem);
	if (ret)
		goto err_user_srq_mtt;

	/* config index queue BA */
	srq->idx_que.umem = FUNC7(udata, ucmd.que_addr,
					srq->idx_que.buf_size, 0, 0);
	if (FUNC0(srq->idx_que.umem)) {
		FUNC2(hr_dev->dev, "ib_umem_get error for index queue\n");
		ret = FUNC1(srq->idx_que.umem);
		goto err_user_srq_mtt;
	}

	ret = FUNC5(hr_dev, FUNC8(srq->idx_que.umem),
				PAGE_SHIFT, &srq->idx_que.mtt);

	if (ret) {
		FUNC2(hr_dev->dev, "hns_roce_mtt_init error for idx que\n");
		goto err_user_idx_mtt;
	}

	ret = FUNC3(hr_dev, &srq->idx_que.mtt,
					 srq->idx_que.umem);
	if (ret) {
		FUNC2(hr_dev->dev,
			"hns_roce_ib_umem_write_mtt error for idx que\n");
		goto err_user_idx_buf;
	}

	return 0;

err_user_idx_buf:
	FUNC4(hr_dev, &srq->idx_que.mtt);

err_user_idx_mtt:
	FUNC9(srq->idx_que.umem);

err_user_srq_mtt:
	FUNC4(hr_dev, &srq->mtt);

err_user_buf:
	FUNC9(srq->umem);

	return ret;
}