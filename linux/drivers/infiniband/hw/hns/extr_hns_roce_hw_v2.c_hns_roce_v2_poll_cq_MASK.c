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
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;
struct hns_roce_qp {int dummy; } ;
struct hns_roce_cq {int /*<<< orphan*/  lock; int /*<<< orphan*/  cons_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_cq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hns_roce_cq*,struct hns_roce_qp**,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct hns_roce_cq* FUNC4 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ib_cq *ibcq, int num_entries,
			       struct ib_wc *wc)
{
	struct hns_roce_cq *hr_cq = FUNC4(ibcq);
	struct hns_roce_qp *cur_qp = NULL;
	unsigned long flags;
	int npolled;

	FUNC2(&hr_cq->lock, flags);

	for (npolled = 0; npolled < num_entries; ++npolled) {
		if (FUNC1(hr_cq, &cur_qp, wc + npolled))
			break;
	}

	if (npolled) {
		/* Memory barrier */
		FUNC5();
		FUNC0(hr_cq, hr_cq->cons_index);
	}

	FUNC3(&hr_cq->lock, flags);

	return npolled;
}