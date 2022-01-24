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
struct config_group {int dummy; } ;
struct cma_device {int dummy; } ;
struct cma_dev_group {struct config_group device_group; struct config_group ports_group; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct cma_device*) ; 
 int /*<<< orphan*/  cma_device_group_type ; 
 struct cma_device* FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  cma_ports_group_type ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  filter_by_name ; 
 int /*<<< orphan*/  FUNC5 (struct cma_dev_group*) ; 
 struct cma_dev_group* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct cma_dev_group*,struct cma_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static struct config_group *FUNC9(struct config_group *group,
					 const char *name)
{
	int err = -ENODEV;
	struct cma_device *cma_dev = FUNC2(filter_by_name,
							       (void *)name);
	struct cma_dev_group *cma_dev_group = NULL;

	if (!cma_dev)
		goto fail;

	cma_dev_group = FUNC6(sizeof(*cma_dev_group), GFP_KERNEL);

	if (!cma_dev_group) {
		err = -ENOMEM;
		goto fail;
	}

	FUNC8(cma_dev_group->name, name, sizeof(cma_dev_group->name));

	FUNC3(&cma_dev_group->ports_group, "ports",
				    &cma_ports_group_type);

	err = FUNC7(cma_dev_group, cma_dev);
	if (err)
		goto fail;

	FUNC3(&cma_dev_group->device_group, name,
				    &cma_device_group_type);
	FUNC4(&cma_dev_group->ports_group,
			&cma_dev_group->device_group);

	FUNC1(cma_dev);
	return &cma_dev_group->device_group;

fail:
	if (cma_dev)
		FUNC1(cma_dev);
	FUNC5(cma_dev_group);
	return FUNC0(err);
}