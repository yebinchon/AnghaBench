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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ib_udata {int dummy; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;
struct hns_roce_mr {unsigned long long size; int /*<<< orphan*/ * umem; int /*<<< orphan*/  pbl_dma_addr; int /*<<< orphan*/  pbl_buf; } ;
struct TYPE_4__ {scalar_t__ pbl_hop_num; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__* hw; struct device* dev; } ;
struct hns_roce_cmd_mailbox {int /*<<< orphan*/  buf; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int (* rereg_write_mtpt ) (struct hns_roce_dev*,struct hns_roce_mr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hns_roce_dev*,struct hns_roce_mr*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hns_roce_dev*,int,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/ * FUNC7 (struct ib_udata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct hns_roce_dev*,struct hns_roce_mr*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 struct hns_roce_mr* FUNC12 (struct ib_mr*) ; 

__attribute__((used)) static int FUNC13(struct ib_mr *ibmr, int flags,
			  u64 start, u64 length,
			  u64 virt_addr, int mr_access_flags,
			  struct hns_roce_cmd_mailbox *mailbox,
			  u32 pdn, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC11(ibmr->device);
	struct hns_roce_mr *mr = FUNC12(ibmr);
	struct device *dev = hr_dev->dev;
	int npages;
	int ret;

	if (mr->size != ~0ULL) {
		npages = FUNC8(mr->umem);

		if (hr_dev->caps.pbl_hop_num)
			FUNC6(hr_dev, mr);
		else
			FUNC3(dev, npages * 8,
					  mr->pbl_buf, mr->pbl_dma_addr);
	}
	FUNC9(mr->umem);

	mr->umem = FUNC7(udata, start, length, mr_access_flags, 0);
	if (FUNC0(mr->umem)) {
		ret = FUNC1(mr->umem);
		mr->umem = NULL;
		return -ENOMEM;
	}
	npages = FUNC8(mr->umem);

	if (hr_dev->caps.pbl_hop_num) {
		ret = FUNC5(hr_dev, npages, mr);
		if (ret)
			goto release_umem;
	} else {
		mr->pbl_buf = FUNC2(dev, npages * 8,
						 &(mr->pbl_dma_addr),
						 GFP_KERNEL);
		if (!mr->pbl_buf) {
			ret = -ENOMEM;
			goto release_umem;
		}
	}

	ret = hr_dev->hw->rereg_write_mtpt(hr_dev, mr, flags, pdn,
					   mr_access_flags, virt_addr,
					   length, mailbox->buf);
	if (ret)
		goto release_umem;


	ret = FUNC4(hr_dev, mr, mr->umem);
	if (ret) {
		if (mr->size != ~0ULL) {
			npages = FUNC8(mr->umem);

			if (hr_dev->caps.pbl_hop_num)
				FUNC6(hr_dev, mr);
			else
				FUNC3(dev, npages * 8,
						  mr->pbl_buf,
						  mr->pbl_dma_addr);
		}

		goto release_umem;
	}

	return 0;

release_umem:
	FUNC9(mr->umem);
	return ret;

}