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
struct qcom_iommu_dev {unsigned int num_ctxs; } ;
struct platform_device {int dummy; } ;
struct of_phandle_args {unsigned int* args; int args_count; TYPE_1__* np; } ;
struct iommu_fwspec {struct qcom_iommu_dev* iommu_priv; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct iommu_fwspec* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,unsigned int*,int) ; 
 struct platform_device* FUNC4 (TYPE_1__*) ; 
 struct qcom_iommu_dev* FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct of_phandle_args *args)
{
	struct iommu_fwspec *fwspec = FUNC2(dev);
	struct qcom_iommu_dev *qcom_iommu;
	struct platform_device *iommu_pdev;
	unsigned asid = args->args[0];

	if (args->args_count != 1) {
		FUNC1(dev, "incorrect number of iommu params found for %s "
			"(found %d, expected 1)\n",
			args->np->full_name, args->args_count);
		return -EINVAL;
	}

	iommu_pdev = FUNC4(args->np);
	if (FUNC0(!iommu_pdev))
		return -EINVAL;

	qcom_iommu = FUNC5(iommu_pdev);

	/* make sure the asid specified in dt is valid, so we don't have
	 * to sanity check this elsewhere, since 'asid - 1' is used to
	 * index into qcom_iommu->ctxs:
	 */
	if (FUNC0(asid < 1) ||
	    FUNC0(asid > qcom_iommu->num_ctxs))
		return -EINVAL;

	if (!fwspec->iommu_priv) {
		fwspec->iommu_priv = qcom_iommu;
	} else {
		/* make sure devices iommus dt node isn't referring to
		 * multiple different iommu devices.  Multiple context
		 * banks are ok, but multiple devices are not:
		 */
		if (FUNC0(qcom_iommu != fwspec->iommu_priv))
			return -EINVAL;
	}

	return FUNC3(dev, &asid, 1);
}