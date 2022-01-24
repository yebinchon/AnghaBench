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
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mw {int type; int /*<<< orphan*/  rkey; } ;
struct hns_roce_mw {struct ib_mw ibmw; int /*<<< orphan*/  pbl_buf_pg_sz; int /*<<< orphan*/  pbl_ba_pg_sz; int /*<<< orphan*/  pbl_hop_num; int /*<<< orphan*/  pdn; int /*<<< orphan*/  rkey; } ;
struct TYPE_5__ {int /*<<< orphan*/  pbl_buf_pg_sz; int /*<<< orphan*/  pbl_ba_pg_sz; int /*<<< orphan*/  pbl_hop_num; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtpt_bitmap; } ;
struct hns_roce_dev {TYPE_2__ caps; TYPE_1__ mr_table; } ;
typedef  enum ib_mw_type { ____Placeholder_ib_mw_type } ib_mw_type ;
struct TYPE_6__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned long*) ; 
 int FUNC2 (struct hns_roce_dev*,struct hns_roce_mw*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,struct hns_roce_mw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_mw*) ; 
 struct hns_roce_mw* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct ib_pd*) ; 

struct ib_mw *FUNC9(struct ib_pd *ib_pd, enum ib_mw_type type,
				struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC7(ib_pd->device);
	struct hns_roce_mw *mw;
	unsigned long index = 0;
	int ret;

	mw = FUNC6(sizeof(*mw), GFP_KERNEL);
	if (!mw)
		return FUNC0(-ENOMEM);

	/* Allocate a key for mw from bitmap */
	ret = FUNC1(&hr_dev->mr_table.mtpt_bitmap, &index);
	if (ret)
		goto err_bitmap;

	mw->rkey = FUNC4(index);

	mw->ibmw.rkey = mw->rkey;
	mw->ibmw.type = type;
	mw->pdn = FUNC8(ib_pd)->pdn;
	mw->pbl_hop_num = hr_dev->caps.pbl_hop_num;
	mw->pbl_ba_pg_sz = hr_dev->caps.pbl_ba_pg_sz;
	mw->pbl_buf_pg_sz = hr_dev->caps.pbl_buf_pg_sz;

	ret = FUNC2(hr_dev, mw);
	if (ret)
		goto err_mw;

	return &mw->ibmw;

err_mw:
	FUNC3(hr_dev, mw);

err_bitmap:
	FUNC5(mw);

	return FUNC0(ret);
}