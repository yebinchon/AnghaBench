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
struct config_item {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_port_group {TYPE_1__* cma_dev_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 struct cma_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_by_name ; 
 struct cma_dev_port_group* FUNC1 (struct config_item*) ; 

__attribute__((used)) static int FUNC2(struct config_item *item,
				   struct cma_device **pcma_dev,
				   struct cma_dev_port_group **pgroup)
{
	struct cma_dev_port_group *group = FUNC1(item);
	struct cma_device *cma_dev;

	if (!group)
		return -ENODEV;

	cma_dev = FUNC0(filter_by_name,
					    group->cma_dev_group->name);
	if (!cma_dev)
		return -ENODEV;

	*pcma_dev = cma_dev;
	*pgroup = group;

	return 0;
}