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
typedef  scalar_t__ u32 ;
struct rvt_dev_info {TYPE_1__* qp_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  qpn_table; struct TYPE_2__* qp_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_dev_info*,char*,scalar_t__) ; 

void FUNC4(struct rvt_dev_info *rdi)
{
	u32 qps_inuse = FUNC2(rdi);

	if (qps_inuse)
		FUNC3(rdi, "QP memory leak! %u still in use\n",
			   qps_inuse);
	if (!rdi->qp_dev)
		return;

	FUNC1(rdi->qp_dev->qp_table);
	FUNC0(&rdi->qp_dev->qpn_table);
	FUNC1(rdi->qp_dev);
}