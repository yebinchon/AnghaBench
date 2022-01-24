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
typedef  int /*<<< orphan*/  u8 ;
struct intel_iommu {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int FUNC1 (struct intel_iommu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_iommu* FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  domain_context_mapped_cb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct intel_iommu*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct intel_iommu *iommu;
	u8 bus, devfn;

	iommu = FUNC2(dev, &bus, &devfn);
	if (!iommu)
		return -ENODEV;

	if (!FUNC0(dev))
		return FUNC1(iommu, bus, devfn);

	return !FUNC3(FUNC4(dev),
				       domain_context_mapped_cb, iommu);
}