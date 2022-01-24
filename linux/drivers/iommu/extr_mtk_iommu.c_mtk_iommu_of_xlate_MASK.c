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
struct platform_device {int dummy; } ;
struct of_phandle_args {int args_count; int /*<<< orphan*/  args; int /*<<< orphan*/  np; } ;
struct iommu_fwspec {scalar_t__ iommu_priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct iommu_fwspec* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct of_phandle_args *args)
{
	struct iommu_fwspec *fwspec = FUNC2(dev);
	struct platform_device *m4updev;

	if (args->args_count != 1) {
		FUNC1(dev, "invalid #iommu-cells(%d) property for IOMMU\n",
			args->args_count);
		return -EINVAL;
	}

	if (!fwspec->iommu_priv) {
		/* Get the m4u device */
		m4updev = FUNC4(args->np);
		if (FUNC0(!m4updev))
			return -EINVAL;

		fwspec->iommu_priv = FUNC5(m4updev);
	}

	return FUNC3(dev, args->args, 1);
}