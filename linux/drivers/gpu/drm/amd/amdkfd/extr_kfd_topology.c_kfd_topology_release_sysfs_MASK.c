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
struct TYPE_2__ {int /*<<< orphan*/ * kobj_topology; int /*<<< orphan*/ * kobj_nodes; int /*<<< orphan*/  attr_props; int /*<<< orphan*/  attr_genid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sys_props ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0();
	if (sys_props.kobj_topology) {
		FUNC3(sys_props.kobj_topology,
				&sys_props.attr_genid);
		FUNC3(sys_props.kobj_topology,
				&sys_props.attr_props);
		if (sys_props.kobj_nodes) {
			FUNC1(sys_props.kobj_nodes);
			FUNC2(sys_props.kobj_nodes);
			sys_props.kobj_nodes = NULL;
		}
		FUNC1(sys_props.kobj_topology);
		FUNC2(sys_props.kobj_topology);
		sys_props.kobj_topology = NULL;
	}
}