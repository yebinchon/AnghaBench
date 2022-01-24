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
struct hns_roce_dev {TYPE_1__* hw; scalar_t__ cmd_mod; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct hns_roce_dev*,int) ;int /*<<< orphan*/  (* cmq_exit ) (struct hns_roce_dev*) ;int /*<<< orphan*/  (* cleanup_eq ) (struct hns_roce_dev*) ;int /*<<< orphan*/  (* hw_exit ) (struct hns_roce_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_roce_dev*,int) ; 

void FUNC9(struct hns_roce_dev *hr_dev)
{
	FUNC4(hr_dev);

	if (hr_dev->hw->hw_exit)
		hr_dev->hw->hw_exit(hr_dev);
	FUNC0(hr_dev);
	FUNC1(hr_dev);

	if (hr_dev->cmd_mod)
		FUNC3(hr_dev);

	hr_dev->hw->cleanup_eq(hr_dev);
	FUNC2(hr_dev);
	if (hr_dev->hw->cmq_exit)
		hr_dev->hw->cmq_exit(hr_dev);
	if (hr_dev->hw->reset)
		hr_dev->hw->reset(hr_dev, false);
}