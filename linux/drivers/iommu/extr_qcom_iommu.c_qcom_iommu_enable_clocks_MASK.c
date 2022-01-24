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
struct qcom_iommu_dev {int /*<<< orphan*/  iface_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct qcom_iommu_dev *qcom_iommu)
{
	int ret;

	ret = FUNC1(qcom_iommu->iface_clk);
	if (ret) {
		FUNC2(qcom_iommu->dev, "Couldn't enable iface_clk\n");
		return ret;
	}

	ret = FUNC1(qcom_iommu->bus_clk);
	if (ret) {
		FUNC2(qcom_iommu->dev, "Couldn't enable bus_clk\n");
		FUNC0(qcom_iommu->iface_clk);
		return ret;
	}

	return 0;
}