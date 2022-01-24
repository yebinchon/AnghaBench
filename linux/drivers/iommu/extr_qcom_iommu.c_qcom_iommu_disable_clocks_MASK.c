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
struct qcom_iommu_dev {int /*<<< orphan*/  iface_clk; int /*<<< orphan*/  bus_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct qcom_iommu_dev *qcom_iommu)
{
	FUNC0(qcom_iommu->bus_clk);
	FUNC0(qcom_iommu->iface_clk);
}