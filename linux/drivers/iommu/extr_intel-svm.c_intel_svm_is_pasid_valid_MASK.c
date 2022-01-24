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
struct intel_svm {TYPE_1__* mm; } ;
struct intel_iommu {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm_users; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct intel_svm* FUNC1 (int) ; 
 struct intel_iommu* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pasid_mutex ; 

int FUNC5(struct device *dev, int pasid)
{
	struct intel_iommu *iommu;
	struct intel_svm *svm;
	int ret = -EINVAL;

	FUNC3(&pasid_mutex);
	iommu = FUNC2(dev);
	if (!iommu)
		goto out;

	svm = FUNC1(pasid);
	if (!svm)
		goto out;

	/* init_mm is used in this case */
	if (!svm->mm)
		ret = 1;
	else if (FUNC0(&svm->mm->mm_users) > 0)
		ret = 1;
	else
		ret = 0;

 out:
	FUNC4(&pasid_mutex);

	return ret;
}