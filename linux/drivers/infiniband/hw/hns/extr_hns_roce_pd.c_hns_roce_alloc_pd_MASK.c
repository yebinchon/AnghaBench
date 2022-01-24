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
typedef  int /*<<< orphan*/  uresp ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct hns_roce_pd {int /*<<< orphan*/  pdn; } ;
struct hns_roce_ib_alloc_pd_resp {int /*<<< orphan*/  pdn; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ib_udata*,struct hns_roce_ib_alloc_pd_resp*,int) ; 
 struct hns_roce_dev* FUNC4 (struct ib_device*) ; 
 struct hns_roce_pd* FUNC5 (struct ib_pd*) ; 

int FUNC6(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct ib_device *ib_dev = ibpd->device;
	struct hns_roce_dev *hr_dev = FUNC4(ib_dev);
	struct device *dev = hr_dev->dev;
	struct hns_roce_pd *pd = FUNC5(ibpd);
	int ret;

	ret = FUNC1(FUNC4(ib_dev), &pd->pdn);
	if (ret) {
		FUNC0(dev, "[alloc_pd]hns_roce_pd_alloc failed!\n");
		return ret;
	}

	if (udata) {
		struct hns_roce_ib_alloc_pd_resp uresp = {.pdn = pd->pdn};

		if (FUNC3(udata, &uresp, sizeof(uresp))) {
			FUNC2(FUNC4(ib_dev), pd->pdn);
			FUNC0(dev, "[alloc_pd]ib_copy_to_udata failed!\n");
			return -EFAULT;
		}
	}

	return 0;
}