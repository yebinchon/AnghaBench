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
struct resource {int start; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;
struct dev_dax {int target_node; struct resource* dax_kmem_res; TYPE_1__* region; } ;
typedef  int resource_size_t ;
struct TYPE_2__ {struct resource res; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_SYSTEM_RAM ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 struct resource* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct resource*) ; 
 struct dev_dax* FUNC9 (struct device*) ; 

int FUNC10(struct device *dev)
{
	struct dev_dax *dev_dax = FUNC9(dev);
	struct resource *res = &dev_dax->region->res;
	resource_size_t kmem_start;
	resource_size_t kmem_size;
	resource_size_t kmem_end;
	struct resource *new_res;
	int numa_node;
	int rc;

	/*
	 * Ensure good NUMA information for the persistent memory.
	 * Without this check, there is a risk that slow memory
	 * could be mixed in a node with faster memory, causing
	 * unavoidable performance issues.
	 */
	numa_node = dev_dax->target_node;
	if (numa_node < 0) {
		FUNC3(dev, "rejecting DAX region %pR with invalid node: %d\n",
			 res, numa_node);
		return -EINVAL;
	}

	/* Hotplug starting at the beginning of the next block: */
	kmem_start = FUNC0(res->start, FUNC5());

	kmem_size = FUNC8(res);
	/* Adjust the size down to compensate for moving up kmem_start: */
	kmem_size -= kmem_start - res->start;
	/* Align the size down to cover only complete blocks: */
	kmem_size &= ~(FUNC5() - 1);
	kmem_end = kmem_start + kmem_size;

	/* Region is permanently reserved.  Hot-remove not yet implemented. */
	new_res = FUNC7(kmem_start, kmem_size, FUNC2(dev));
	if (!new_res) {
		FUNC3(dev, "could not reserve region [%pa-%pa]\n",
			 &kmem_start, &kmem_end);
		return -EBUSY;
	}

	/*
	 * Set flags appropriate for System RAM.  Leave ..._BUSY clear
	 * so that add_memory() can add a child resource.  Do not
	 * inherit flags from the parent since it may set new flags
	 * unknown to us that will break add_memory() below.
	 */
	new_res->flags = IORESOURCE_SYSTEM_RAM;
	new_res->name = FUNC2(dev);

	rc = FUNC1(numa_node, new_res->start, FUNC8(new_res));
	if (rc) {
		FUNC6(new_res);
		FUNC4(new_res);
		return rc;
	}
	dev_dax->dax_kmem_res = new_res;

	return 0;
}