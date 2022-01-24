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
struct iommu_group {int dummy; } ;
struct device_state {int /*<<< orphan*/  domain; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iommu_group* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iommu_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_state*) ; 

__attribute__((used)) static void FUNC6(struct device_state *dev_state)
{
	struct iommu_group *group;

	/*
	 * First detach device from domain - No more PRI requests will arrive
	 * from that device after it is unbound from the IOMMUv2 domain.
	 */
	group = FUNC3(&dev_state->pdev->dev);
	if (FUNC0(!group))
		return;

	FUNC1(dev_state->domain, group);

	FUNC4(group);

	/* Everything is down now, free the IOMMUv2 domain */
	FUNC2(dev_state->domain);

	/* Finally get rid of the device-state */
	FUNC5(dev_state);
}