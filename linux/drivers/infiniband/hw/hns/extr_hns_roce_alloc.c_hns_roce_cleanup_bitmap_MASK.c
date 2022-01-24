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
struct TYPE_2__ {int flags; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int HNS_ROCE_CAP_FLAG_SRQ ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*) ; 

void FUNC6(struct hns_roce_dev *hr_dev)
{
	if (hr_dev->caps.flags & HNS_ROCE_CAP_FLAG_SRQ)
		FUNC4(hr_dev);
	FUNC3(hr_dev);
	FUNC0(hr_dev);
	FUNC1(hr_dev);
	FUNC2(hr_dev);
	FUNC5(hr_dev);
}