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
struct hns_roce_srq_table {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  table; int /*<<< orphan*/  xa; } ;
struct hns_roce_srq {int /*<<< orphan*/  srqn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; struct hns_roce_srq_table srq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_NO_RR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hns_roce_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct hns_roce_dev *hr_dev,
			      struct hns_roce_srq *srq)
{
	struct hns_roce_srq_table *srq_table = &hr_dev->srq_table;
	int ret;

	ret = FUNC4(hr_dev, NULL, srq->srqn);
	if (ret)
		FUNC2(hr_dev->dev, "HW2SW_SRQ failed (%d) for CQN %06lx\n",
			ret, srq->srqn);

	FUNC7(&srq_table->xa, srq->srqn);

	if (FUNC0(&srq->refcount))
		FUNC1(&srq->free);
	FUNC6(&srq->free);

	FUNC5(hr_dev, &srq_table->table, srq->srqn);
	FUNC3(&srq_table->bitmap, srq->srqn, BITMAP_NO_RR);
}