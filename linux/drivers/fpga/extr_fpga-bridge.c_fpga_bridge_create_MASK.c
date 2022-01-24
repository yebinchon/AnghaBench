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
struct fpga_bridge_ops {int /*<<< orphan*/  groups; } ;
struct TYPE_3__ {int id; int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  class; int /*<<< orphan*/  groups; } ;
struct fpga_bridge {char const* name; TYPE_1__ dev; void* priv; struct fpga_bridge_ops const* br_ops; int /*<<< orphan*/  node; int /*<<< orphan*/  mutex; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  fpga_bridge_class ; 
 int /*<<< orphan*/  fpga_bridge_ida ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fpga_bridge*) ; 
 struct fpga_bridge* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

struct fpga_bridge *FUNC10(struct device *dev, const char *name,
				       const struct fpga_bridge_ops *br_ops,
				       void *priv)
{
	struct fpga_bridge *bridge;
	int id, ret = 0;

	if (!name || !FUNC9(name)) {
		FUNC1(dev, "Attempt to register with no name!\n");
		return NULL;
	}

	bridge = FUNC7(sizeof(*bridge), GFP_KERNEL);
	if (!bridge)
		return NULL;

	id = FUNC4(&fpga_bridge_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		ret = id;
		goto error_kfree;
	}

	FUNC8(&bridge->mutex);
	FUNC0(&bridge->node);

	bridge->name = name;
	bridge->br_ops = br_ops;
	bridge->priv = priv;

	FUNC3(&bridge->dev);
	bridge->dev.groups = br_ops->groups;
	bridge->dev.class = fpga_bridge_class;
	bridge->dev.parent = dev;
	bridge->dev.of_node = dev->of_node;
	bridge->dev.id = id;

	ret = FUNC2(&bridge->dev, "br%d", id);
	if (ret)
		goto error_device;

	return bridge;

error_device:
	FUNC5(&fpga_bridge_ida, id);
error_kfree:
	FUNC6(bridge);

	return NULL;
}