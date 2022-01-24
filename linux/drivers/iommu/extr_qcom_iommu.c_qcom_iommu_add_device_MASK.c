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
struct qcom_iommu_dev {int /*<<< orphan*/  iommu; struct device* dev; } ;
struct iommu_group {int dummy; } ;
struct device_link {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_FLAG_PM_RUNTIME ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct iommu_group*) ; 
 int FUNC1 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device_link* FUNC5 (struct device*,struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct device*) ; 
 struct iommu_group* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct iommu_group*) ; 
 struct qcom_iommu_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct device *dev)
{
	struct qcom_iommu_dev *qcom_iommu = FUNC9(FUNC3(dev));
	struct iommu_group *group;
	struct device_link *link;

	if (!qcom_iommu)
		return -ENODEV;

	/*
	 * Establish the link between iommu and master, so that the
	 * iommu gets runtime enabled/disabled as per the master's
	 * needs.
	 */
	link = FUNC5(dev, qcom_iommu->dev, DL_FLAG_PM_RUNTIME);
	if (!link) {
		FUNC2(qcom_iommu->dev, "Unable to create device link between %s and %s\n",
			FUNC4(qcom_iommu->dev), FUNC4(dev));
		return -ENODEV;
	}

	group = FUNC7(dev);
	if (FUNC0(group))
		return FUNC1(group);

	FUNC8(group);
	FUNC6(&qcom_iommu->iommu, dev);

	return 0;
}