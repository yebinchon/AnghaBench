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
struct TYPE_2__ {int capability; } ;
struct kfd_topology_device {int /*<<< orphan*/  perf_props; TYPE_1__ node_props; } ;
struct kfd_perf_properties {int max_concurrent; int /*<<< orphan*/  list; int /*<<< orphan*/  block_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int HSA_CAP_ATS_PRESENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct kfd_perf_properties* FUNC3 (struct kfd_perf_properties*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(struct kfd_topology_device *kdev)
{
	struct kfd_perf_properties *props;

	if (!(kdev->node_props.capability & HSA_CAP_ATS_PRESENT))
		return 0;

	if (!FUNC2())
		return 0;

	props = FUNC3(props);
	if (!props)
		return -ENOMEM;
	FUNC5(props->block_name, "iommu");
	props->max_concurrent = FUNC0(0) *
		FUNC1(0); /* assume one iommu */
	FUNC4(&props->list, &kdev->perf_props);

	return 0;
}