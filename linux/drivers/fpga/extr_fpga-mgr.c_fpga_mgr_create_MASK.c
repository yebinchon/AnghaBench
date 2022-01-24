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
struct fpga_manager_ops {int /*<<< orphan*/  groups; scalar_t__ write_sg; scalar_t__ write; int /*<<< orphan*/  write_init; int /*<<< orphan*/  state; int /*<<< orphan*/  write_complete; } ;
struct TYPE_3__ {int id; int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/  groups; int /*<<< orphan*/  class; } ;
struct fpga_manager {char const* name; TYPE_1__ dev; void* priv; struct fpga_manager_ops const* mops; int /*<<< orphan*/  ref_mutex; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  fpga_mgr_class ; 
 int /*<<< orphan*/  fpga_mgr_ida ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fpga_manager*) ; 
 struct fpga_manager* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

struct fpga_manager *FUNC9(struct device *dev, const char *name,
				     const struct fpga_manager_ops *mops,
				     void *priv)
{
	struct fpga_manager *mgr;
	int id, ret;

	if (!mops || !mops->write_complete || !mops->state ||
	    !mops->write_init || (!mops->write && !mops->write_sg) ||
	    (mops->write && mops->write_sg)) {
		FUNC0(dev, "Attempt to register without fpga_manager_ops\n");
		return NULL;
	}

	if (!name || !FUNC8(name)) {
		FUNC0(dev, "Attempt to register with no name!\n");
		return NULL;
	}

	mgr = FUNC6(sizeof(*mgr), GFP_KERNEL);
	if (!mgr)
		return NULL;

	id = FUNC3(&fpga_mgr_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		ret = id;
		goto error_kfree;
	}

	FUNC7(&mgr->ref_mutex);

	mgr->name = name;
	mgr->mops = mops;
	mgr->priv = priv;

	FUNC2(&mgr->dev);
	mgr->dev.class = fpga_mgr_class;
	mgr->dev.groups = mops->groups;
	mgr->dev.parent = dev;
	mgr->dev.of_node = dev->of_node;
	mgr->dev.id = id;

	ret = FUNC1(&mgr->dev, "fpga%d", id);
	if (ret)
		goto error_device;

	return mgr;

error_device:
	FUNC4(&fpga_mgr_ida, id);
error_kfree:
	FUNC5(mgr);

	return NULL;
}