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
typedef  int u64 ;
typedef  int u32 ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct hns_roce_mr {struct ib_mr ibmr; int /*<<< orphan*/ * umem; int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int pbl_buf_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_4__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HNS_ROCE_FRMR_MAX_PA ; 
 int IB_MR_TYPE_MEM_REG ; 
 int /*<<< orphan*/  MR_TYPE_FRMR ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,struct hns_roce_mr*) ; 
 int FUNC3 (struct hns_roce_dev*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_mr*) ; 
 struct hns_roce_mr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (struct ib_pd*) ; 

struct ib_mr *FUNC9(struct ib_pd *pd, enum ib_mr_type mr_type,
				u32 max_num_sg, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC7(pd->device);
	struct device *dev = hr_dev->dev;
	struct hns_roce_mr *mr;
	u64 length;
	u32 page_size;
	int ret;

	page_size = 1 << (hr_dev->caps.pbl_buf_pg_sz + PAGE_SHIFT);
	length = max_num_sg * page_size;

	if (mr_type != IB_MR_TYPE_MEM_REG)
		return FUNC0(-EINVAL);

	if (max_num_sg > HNS_ROCE_FRMR_MAX_PA) {
		FUNC1(dev, "max_num_sg larger than %d\n",
			HNS_ROCE_FRMR_MAX_PA);
		return FUNC0(-EINVAL);
	}

	mr = FUNC6(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	mr->type = MR_TYPE_FRMR;

	/* Allocate memory region key */
	ret = FUNC2(hr_dev, FUNC8(pd)->pdn, 0, length,
				0, max_num_sg, mr);
	if (ret)
		goto err_free;

	ret = FUNC3(hr_dev, mr);
	if (ret)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->key;
	mr->umem = NULL;

	return &mr->ibmr;

err_mr:
	FUNC4(FUNC7(pd->device), mr);

err_free:
	FUNC5(mr);
	return FUNC0(ret);
}