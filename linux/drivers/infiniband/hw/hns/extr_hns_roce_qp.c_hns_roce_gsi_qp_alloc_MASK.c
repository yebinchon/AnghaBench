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
struct xarray {int dummy; } ;
struct hns_roce_qp {unsigned long qpn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int num_qps; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; TYPE_1__ caps; struct xarray qp_table_xa; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xarray*,int,struct hns_roce_qp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hns_roce_dev *hr_dev, unsigned long qpn,
				 struct hns_roce_qp *hr_qp)
{
	struct xarray *xa = &hr_dev->qp_table_xa;
	int ret;

	if (!qpn)
		return -EINVAL;

	hr_qp->qpn = qpn;
	FUNC0(&hr_qp->refcount, 1);
	FUNC2(&hr_qp->free);

	ret = FUNC3(FUNC4(xa, hr_qp->qpn & (hr_dev->caps.num_qps - 1),
				hr_qp, GFP_KERNEL));
	if (ret)
		FUNC1(hr_dev->dev, "QPC xa_store failed\n");

	return ret;
}