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
struct hns_roce_qp {int qpn; } ;
struct TYPE_2__ {int num_qps; } ;
struct hns_roce_dev {TYPE_1__ caps; struct xarray qp_table_xa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xarray*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xarray*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct xarray*,unsigned long) ; 

void FUNC3(struct hns_roce_dev *hr_dev, struct hns_roce_qp *hr_qp)
{
	struct xarray *xa = &hr_dev->qp_table_xa;
	unsigned long flags;

	FUNC1(xa, flags);
	FUNC0(xa, hr_qp->qpn & (hr_dev->caps.num_qps - 1));
	FUNC2(xa, flags);
}