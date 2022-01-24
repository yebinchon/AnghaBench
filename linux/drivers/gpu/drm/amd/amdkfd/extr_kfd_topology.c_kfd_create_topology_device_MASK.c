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
struct list_head {int dummy; } ;
struct kfd_topology_device {int /*<<< orphan*/  list; int /*<<< orphan*/  perf_props; int /*<<< orphan*/  io_link_props; int /*<<< orphan*/  cache_props; int /*<<< orphan*/  mem_props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct kfd_topology_device* FUNC1 (struct kfd_topology_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

struct kfd_topology_device *FUNC4(
				struct list_head *device_list)
{
	struct kfd_topology_device *dev;

	dev = FUNC1(dev);
	if (!dev) {
		FUNC3("No memory to allocate a topology device");
		return NULL;
	}

	FUNC0(&dev->mem_props);
	FUNC0(&dev->cache_props);
	FUNC0(&dev->io_link_props);
	FUNC0(&dev->perf_props);

	FUNC2(&dev->list, device_list);

	return dev;
}