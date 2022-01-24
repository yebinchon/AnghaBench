#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int id; } ;
struct drm_property {TYPE_1__ base; } ;
struct drm_device {TYPE_3__* primary; } ;
struct TYPE_8__ {int id; } ;
struct drm_connector {TYPE_4__ base; struct drm_device* dev; } ;
struct TYPE_7__ {TYPE_2__* kdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,int) ; 

void FUNC6(struct drm_connector *connector,
				      struct drm_property *property)
{
	struct drm_device *dev = connector->dev;
	char hotplug_str[] = "HOTPLUG=1", conn_id[21], prop_id[21];
	char *envp[4] = { hotplug_str, conn_id, prop_id, NULL };

	FUNC2(!FUNC3(&connector->base,
					   property->base.id));

	FUNC5(conn_id, FUNC0(conn_id),
		 "CONNECTOR=%u", connector->base.id);
	FUNC5(prop_id, FUNC0(prop_id),
		 "PROPERTY=%u", property->base.id);

	FUNC1("generating connector status event\n");

	FUNC4(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
}