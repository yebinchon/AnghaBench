#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_2__* primary; } ;
struct TYPE_4__ {TYPE_1__* kdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 

void FUNC2(struct drm_device *dev)
{
	char *event_string = "HOTPLUG=1";
	char *envp[] = { event_string, NULL };

	FUNC0("generating hotplug event\n");

	FUNC1(&dev->primary->kdev->kobj, KOBJ_CHANGE, envp);
}