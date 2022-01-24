#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int id; int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  class; } ;
struct fpga_region {int (* get_bridges ) (struct fpga_region*) ;TYPE_1__ dev; int /*<<< orphan*/  bridge_list; int /*<<< orphan*/  mutex; struct fpga_manager* mgr; } ;
struct fpga_manager {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  fpga_region_class ; 
 int /*<<< orphan*/  fpga_region_ida ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fpga_region*) ; 
 struct fpga_region* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct fpga_region
*FUNC8(struct device *dev,
		    struct fpga_manager *mgr,
		    int (*get_bridges)(struct fpga_region *))
{
	struct fpga_region *region;
	int id, ret = 0;

	region = FUNC6(sizeof(*region), GFP_KERNEL);
	if (!region)
		return NULL;

	id = FUNC3(&fpga_region_ida, 0, 0, GFP_KERNEL);
	if (id < 0)
		goto err_free;

	region->mgr = mgr;
	region->get_bridges = get_bridges;
	FUNC7(&region->mutex);
	FUNC0(&region->bridge_list);

	FUNC2(&region->dev);
	region->dev.class = fpga_region_class;
	region->dev.parent = dev;
	region->dev.of_node = dev->of_node;
	region->dev.id = id;

	ret = FUNC1(&region->dev, "region%d", id);
	if (ret)
		goto err_remove;

	return region;

err_remove:
	FUNC4(&fpga_region_ida, id);
err_free:
	FUNC5(region);

	return NULL;
}