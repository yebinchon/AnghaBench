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
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ pd; int /*<<< orphan*/  device; } ;
struct rvt_qp {TYPE_2__ ibqp; } ;
struct rvt_mregion {int lkey; scalar_t__ pd; int /*<<< orphan*/  lkey_invalid; } ;
struct rvt_lkey_table {int /*<<< orphan*/ * table; } ;
struct TYPE_3__ {int lkey_table_size; } ;
struct rvt_dev_info {TYPE_1__ dparms; struct rvt_lkey_table lkey_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct rvt_dev_info* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rvt_mregion* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct rvt_qp *qp, u32 rkey)
{
	struct rvt_dev_info *dev = FUNC1(qp->ibqp.device);
	struct rvt_lkey_table *rkt = &dev->lkey_table;
	struct rvt_mregion *mr;

	if (rkey == 0)
		return -EINVAL;

	FUNC3();
	mr = FUNC2(
		rkt->table[(rkey >> (32 - dev->dparms.lkey_table_size))]);
	if (FUNC5(!mr || mr->lkey != rkey || qp->ibqp.pd != mr->pd))
		goto bail;

	FUNC0(&mr->lkey_invalid, 1);
	FUNC4();
	return 0;

bail:
	FUNC4();
	return -EINVAL;
}