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
struct hns_roce_eq {int eqe_buf_pg_sz; TYPE_2__* buf_list; } ;
struct TYPE_3__ {scalar_t__ eqe_hop_num; } ;
struct hns_roce_dev {int /*<<< orphan*/  dev; TYPE_1__ caps; } ;
struct TYPE_4__ {int /*<<< orphan*/  map; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,struct hns_roce_eq*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct hns_roce_dev *hr_dev,
				struct hns_roce_eq *eq)
{
	u32 buf_chk_sz;

	buf_chk_sz = 1 << (eq->eqe_buf_pg_sz + PAGE_SHIFT);

	if (hr_dev->caps.eqe_hop_num) {
		FUNC1(hr_dev, eq);
		return;
	}

	FUNC0(hr_dev->dev, buf_chk_sz, eq->buf_list->buf,
			  eq->buf_list->map);
	FUNC2(eq->buf_list);
}