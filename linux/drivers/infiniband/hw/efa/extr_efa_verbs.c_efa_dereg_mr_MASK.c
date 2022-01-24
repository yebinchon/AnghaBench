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
struct ib_udata {int dummy; } ;
struct ib_mr {int /*<<< orphan*/  lkey; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  lkey; } ;
struct efa_mr {int /*<<< orphan*/  umem; TYPE_1__ ibmr; } ;
struct efa_dev {int /*<<< orphan*/  edev; int /*<<< orphan*/  ibdev; } ;
struct efa_com_dereg_mr_params {int /*<<< orphan*/  l_key; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct efa_com_dereg_mr_params*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efa_mr*) ; 
 struct efa_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct efa_mr* FUNC5 (struct ib_mr*) ; 

int FUNC6(struct ib_mr *ibmr, struct ib_udata *udata)
{
	struct efa_dev *dev = FUNC4(ibmr->device);
	struct efa_com_dereg_mr_params params;
	struct efa_mr *mr = FUNC5(ibmr);
	int err;

	FUNC2(&dev->ibdev, "Deregister mr[%d]\n", ibmr->lkey);

	params.l_key = mr->ibmr.lkey;
	err = FUNC0(&dev->edev, &params);
	if (err)
		return err;

	FUNC1(mr->umem);
	FUNC3(mr);

	return 0;
}