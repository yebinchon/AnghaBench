#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct list_head {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  mr_lock; int /*<<< orphan*/  pd; } ;
struct ib_mr {int /*<<< orphan*/  qp_entry; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;

/* Variables and functions */
 int IB_MR_TYPE_INTEGRITY ; 
 scalar_t__ FUNC0 (struct ib_mr*) ; 
 int FUNC1 (struct ib_mr*) ; 
 struct ib_mr* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct ib_mr* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_qp*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC8(struct ib_qp *qp, struct list_head *list, int nr,
		enum ib_mr_type type, u32 max_num_sg, u32 max_num_meta_sg)
{
	struct ib_mr *mr;
	unsigned long flags;
	int ret, i;

	for (i = 0; i < nr; i++) {
		if (type == IB_MR_TYPE_INTEGRITY)
			mr = FUNC3(qp->pd, max_num_sg,
						   max_num_meta_sg);
		else
			mr = FUNC2(qp->pd, type, max_num_sg);
		if (FUNC0(mr)) {
			ret = FUNC1(mr);
			goto out;
		}

		FUNC6(&qp->mr_lock, flags);
		FUNC5(&mr->qp_entry, list);
		FUNC7(&qp->mr_lock, flags);
	}

	return 0;
out:
	FUNC4(qp, list);
	return ret;
}