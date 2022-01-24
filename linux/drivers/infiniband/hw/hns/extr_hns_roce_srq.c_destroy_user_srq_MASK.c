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
struct TYPE_2__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  mtt; } ;
struct hns_roce_srq {int /*<<< orphan*/  umem; int /*<<< orphan*/  mtt; TYPE_1__ idx_que; } ;
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hns_roce_dev *hr_dev,
			     struct hns_roce_srq *srq)
{
	FUNC0(hr_dev, &srq->idx_que.mtt);
	FUNC1(srq->idx_que.umem);
	FUNC0(hr_dev, &srq->mtt);
	FUNC1(srq->umem);
}