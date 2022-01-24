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
struct ipmmu_vmsa_device {int /*<<< orphan*/  iommu; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct ipmmu_vmsa_device* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct ipmmu_vmsa_device *mmu = FUNC3(dev);

	FUNC1(&mmu->iommu, dev);
	FUNC0(dev);
	FUNC2(dev);
}