#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ib_pd {int /*<<< orphan*/  device; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  rkey; } ;
struct hns_roce_mr {struct ib_mr ibmr; int /*<<< orphan*/ * umem; int /*<<< orphan*/  key; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdn; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MR_TYPE_DMA ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int,int /*<<< orphan*/ ,struct hns_roce_mr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hns_roce_mr*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_mr*) ; 
 struct hns_roce_mr* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (struct ib_pd*) ; 

struct ib_mr *FUNC8(struct ib_pd *pd, int acc)
{
	struct hns_roce_mr *mr;
	int ret;

	mr = FUNC5(sizeof(*mr), GFP_KERNEL);
	if (mr == NULL)
		return  FUNC0(-ENOMEM);

	mr->type = MR_TYPE_DMA;

	/* Allocate memory region key */
	ret = FUNC1(FUNC6(pd->device), FUNC7(pd)->pdn, 0,
				~0ULL, acc, 0, mr);
	if (ret)
		goto err_free;

	ret = FUNC2(FUNC6(pd->device), mr);
	if (ret)
		goto err_mr;

	mr->ibmr.rkey = mr->ibmr.lkey = mr->key;
	mr->umem = NULL;

	return &mr->ibmr;

err_mr:
	FUNC3(FUNC6(pd->device), mr);

err_free:
	FUNC4(mr);
	return FUNC0(ret);
}