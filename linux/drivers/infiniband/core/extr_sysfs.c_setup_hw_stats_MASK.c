#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct rdma_hw_stats {int num_counters; char* name; struct rdma_hw_stats** attrs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * names; int /*<<< orphan*/  timestamp; } ;
struct kobject {int dummy; } ;
struct ib_port {struct rdma_hw_stats* hw_stats; struct rdma_hw_stats* hw_stats_ag; struct kobject kobj; } ;
struct TYPE_6__ {struct kobject kobj; } ;
struct TYPE_4__ {int (* get_hw_stats ) (struct ib_device*,struct rdma_hw_stats*,size_t,int) ;struct rdma_hw_stats* (* alloc_hw_stats ) (struct ib_device*,size_t) ;} ;
struct ib_device {struct rdma_hw_stats* hw_stats; struct rdma_hw_stats* hw_stats_ag; TYPE_3__ dev; TYPE_2__* port_data; TYPE_1__ ops; } ;
struct attribute_group {int num_counters; char* name; struct attribute_group** attrs; int /*<<< orphan*/  lock; int /*<<< orphan*/ * names; int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {struct rdma_hw_stats* hw_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct rdma_hw_stats* FUNC0 (int,size_t,int /*<<< orphan*/ ) ; 
 struct rdma_hw_stats* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_hw_stats*) ; 
 struct rdma_hw_stats* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct rdma_hw_stats* FUNC5 (struct ib_device*,size_t) ; 
 int FUNC6 (struct ib_device*,struct rdma_hw_stats*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_hw_stats*) ; 
 int FUNC8 (struct kobject*,struct rdma_hw_stats*) ; 

__attribute__((used)) static void FUNC9(struct ib_device *device, struct ib_port *port,
			   u8 port_num)
{
	struct attribute_group *hsag;
	struct rdma_hw_stats *stats;
	int i, ret;

	stats = device->ops.alloc_hw_stats(device, port_num);

	if (!stats)
		return;

	if (!stats->names || stats->num_counters <= 0)
		goto err_free_stats;

	/*
	 * Two extra attribue elements here, one for the lifespan entry and
	 * one to NULL terminate the list for the sysfs core code
	 */
	hsag = FUNC3(sizeof(*hsag) +
		       sizeof(void *) * (stats->num_counters + 2),
		       GFP_KERNEL);
	if (!hsag)
		goto err_free_stats;

	ret = device->ops.get_hw_stats(device, stats, port_num,
				       stats->num_counters);
	if (ret != stats->num_counters)
		goto err_free_hsag;

	stats->timestamp = jiffies;

	hsag->name = "hw_counters";
	hsag->attrs = (void *)hsag + sizeof(*hsag);

	for (i = 0; i < stats->num_counters; i++) {
		hsag->attrs[i] = FUNC0(i, port_num, stats->names[i]);
		if (!hsag->attrs[i])
			goto err;
		FUNC7(hsag->attrs[i]);
	}

	FUNC4(&stats->lock);
	/* treat an error here as non-fatal */
	hsag->attrs[i] = FUNC1("lifespan", port_num);
	if (hsag->attrs[i])
		FUNC7(hsag->attrs[i]);

	if (port) {
		struct kobject *kobj = &port->kobj;
		ret = FUNC8(kobj, hsag);
		if (ret)
			goto err;
		port->hw_stats_ag = hsag;
		port->hw_stats = stats;
		if (device->port_data)
			device->port_data[port_num].hw_stats = stats;
	} else {
		struct kobject *kobj = &device->dev.kobj;
		ret = FUNC8(kobj, hsag);
		if (ret)
			goto err;
		device->hw_stats_ag = hsag;
		device->hw_stats = stats;
	}

	return;

err:
	for (; i >= 0; i--)
		FUNC2(hsag->attrs[i]);
err_free_hsag:
	FUNC2(hsag);
err_free_stats:
	FUNC2(stats);
	return;
}