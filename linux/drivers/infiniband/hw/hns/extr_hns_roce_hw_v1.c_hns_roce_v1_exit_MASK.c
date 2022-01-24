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
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_PORT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*) ; 

__attribute__((used)) static void FUNC6(struct hns_roce_dev *hr_dev)
{
	FUNC3(hr_dev, HNS_ROCE_PORT_DOWN);
	FUNC2(hr_dev);
	FUNC5(hr_dev);
	FUNC0(hr_dev);
	FUNC4(hr_dev);
	FUNC1(hr_dev);
}