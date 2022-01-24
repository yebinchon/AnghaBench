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
struct ib_mw {int /*<<< orphan*/  device; } ;
struct hns_roce_mw {int dummy; } ;
struct hns_roce_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*,struct hns_roce_mw*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_mw*) ; 
 struct hns_roce_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct hns_roce_mw* FUNC3 (struct ib_mw*) ; 

int FUNC4(struct ib_mw *ibmw)
{
	struct hns_roce_dev *hr_dev = FUNC2(ibmw->device);
	struct hns_roce_mw *mw = FUNC3(ibmw);

	FUNC0(hr_dev, mw);
	FUNC1(mw);

	return 0;
}