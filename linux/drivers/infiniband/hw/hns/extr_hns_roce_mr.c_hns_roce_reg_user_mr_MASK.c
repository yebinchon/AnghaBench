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
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct hns_roce_mr {int /*<<< orphan*/  umem; struct ib_mr ibmr; int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int pbl_hop_num; int pbl_ba_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int BA_BYTE_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HNS_ROCE_MAX_MTPT_PBL_NUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MR_TYPE_MR ; 
 int PAGE_SHIFT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,...) ; 
 int FUNC4 (struct hns_roce_dev*,struct hns_roce_mr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ ,int,int,int,int,struct hns_roce_mr*) ; 
 int FUNC6 (struct hns_roce_dev*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_udata*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hns_roce_mr*) ; 
 struct hns_roce_mr* FUNC12 (int,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (struct ib_pd*) ; 

struct ib_mr *FUNC15(struct ib_pd *pd, u64 start, u64 length,
				   u64 virt_addr, int access_flags,
				   struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC13(pd->device);
	struct device *dev = hr_dev->dev;
	struct hns_roce_mr *mr;
	int bt_size;
	int ret;
	int n;
	int i;

	mr = FUNC12(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	mr->umem = FUNC8(udata, start, length, access_flags, 0);
	if (FUNC1(mr->umem)) {
		ret = FUNC2(mr->umem);
		goto err_free;
	}

	n = FUNC9(mr->umem);

	if (!hr_dev->caps.pbl_hop_num) {
		if (n > HNS_ROCE_MAX_MTPT_PBL_NUM) {
			FUNC3(dev,
			     " MR len %lld err. MR is limited to 4G at most!\n",
			     length);
			ret = -EINVAL;
			goto err_umem;
		}
	} else {
		u64 pbl_size = 1;

		bt_size = (1 << (hr_dev->caps.pbl_ba_pg_sz + PAGE_SHIFT)) /
			  BA_BYTE_LEN;
		for (i = 0; i < hr_dev->caps.pbl_hop_num; i++)
			pbl_size *= bt_size;
		if (n > pbl_size) {
			FUNC3(dev,
			    " MR len %lld err. MR page num is limited to %lld!\n",
			    length, pbl_size);
			ret = -EINVAL;
			goto err_umem;
		}
	}

	mr->type = MR_TYPE_MR;

	ret = FUNC5(hr_dev, FUNC14(pd)->pdn, virt_addr, length,
				access_flags, n, mr);
	if (ret)
		goto err_umem;

	ret = FUNC4(hr_dev, mr, mr->umem);
	if (ret)
		goto err_mr;

	ret = FUNC6(hr_dev, mr);
	if (ret)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->key;

	return &mr->ibmr;

err_mr:
	FUNC7(hr_dev, mr);

err_umem:
	FUNC10(mr->umem);

err_free:
	FUNC11(mr);
	return FUNC0(ret);
}