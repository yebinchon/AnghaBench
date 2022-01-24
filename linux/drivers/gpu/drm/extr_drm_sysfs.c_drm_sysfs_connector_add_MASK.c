#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct drm_device {TYPE_1__* primary; } ;
struct drm_connector {TYPE_3__* ddc; TYPE_4__* kdev; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_2__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  index; int /*<<< orphan*/  kdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  connector_dev_groups ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_class ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

int FUNC7(struct drm_connector *connector)
{
	struct drm_device *dev = connector->dev;

	if (connector->kdev)
		return 0;

	connector->kdev =
		FUNC4(drm_class, dev->primary->kdev, 0,
					  connector, connector_dev_groups,
					  "card%d-%s", dev->primary->index,
					  connector->name);
	FUNC0("adding \"%s\" to sysfs\n",
		  connector->name);

	if (FUNC2(connector->kdev)) {
		FUNC1("failed to register connector device: %ld\n", FUNC3(connector->kdev));
		return FUNC3(connector->kdev);
	}

	/* Let userspace know we have a new connector */
	FUNC5(dev);

	if (connector->ddc)
		return FUNC6(&connector->kdev->kobj,
				 &connector->ddc->dev.kobj, "ddc");
	return 0;
}