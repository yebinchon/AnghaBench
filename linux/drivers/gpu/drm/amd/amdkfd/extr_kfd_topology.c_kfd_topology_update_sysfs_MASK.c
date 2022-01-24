#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {char* name; void* mode; } ;
struct TYPE_6__ {TYPE_1__ attr_props; scalar_t__ kobj_topology; TYPE_1__ attr_genid; int /*<<< orphan*/  kobj_nodes; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* KFD_SYSFS_FILE_MODE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 () ; 
 TYPE_4__* kfd_device ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_3__ sys_props ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  sysprops_type ; 

__attribute__((used)) static int FUNC8(void)
{
	int ret;

	FUNC5("Creating topology SYSFS entries\n");
	if (!sys_props.kobj_topology) {
		sys_props.kobj_topology =
				FUNC0(sys_props.kobj_topology);
		if (!sys_props.kobj_topology)
			return -ENOMEM;

		ret = FUNC4(sys_props.kobj_topology,
				&sysprops_type,  &kfd_device->kobj,
				"topology");
		if (ret < 0)
			return ret;

		sys_props.kobj_nodes = FUNC3("nodes",
				sys_props.kobj_topology);
		if (!sys_props.kobj_nodes)
			return -ENOMEM;

		sys_props.attr_genid.name = "generation_id";
		sys_props.attr_genid.mode = KFD_SYSFS_FILE_MODE;
		FUNC6(&sys_props.attr_genid);
		ret = FUNC7(sys_props.kobj_topology,
				&sys_props.attr_genid);
		if (ret < 0)
			return ret;

		sys_props.attr_props.name = "system_properties";
		sys_props.attr_props.mode = KFD_SYSFS_FILE_MODE;
		FUNC6(&sys_props.attr_props);
		ret = FUNC7(sys_props.kobj_topology,
				&sys_props.attr_props);
		if (ret < 0)
			return ret;
	}

	FUNC2();

	return FUNC1();
}