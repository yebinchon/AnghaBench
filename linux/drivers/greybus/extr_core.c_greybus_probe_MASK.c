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
struct greybus_driver {int (* probe ) (struct gb_bundle*,struct greybus_bundle_id const*) ;int /*<<< orphan*/  id_table; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_bundle {TYPE_1__* intf; int /*<<< orphan*/  id; int /*<<< orphan*/  connections; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {struct device dev; int /*<<< orphan*/  control; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GB_BUNDLE_AUTOSUSPEND_MS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct greybus_bundle_id* FUNC3 (struct gb_bundle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int FUNC16 (struct gb_bundle*,struct greybus_bundle_id const*) ; 
 struct gb_bundle* FUNC17 (struct device*) ; 
 struct greybus_driver* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct device *dev)
{
	struct greybus_driver *driver = FUNC18(dev->driver);
	struct gb_bundle *bundle = FUNC17(dev);
	const struct greybus_bundle_id *id;
	int retval;

	/* match id */
	id = FUNC3(bundle, driver->id_table);
	if (!id)
		return -ENODEV;

	retval = FUNC9(&bundle->intf->dev);
	if (retval < 0) {
		FUNC11(&bundle->intf->dev);
		return retval;
	}

	retval = FUNC1(bundle->intf->control, bundle->id);
	if (retval) {
		FUNC10(&bundle->intf->dev);
		return retval;
	}

	/*
	 * Unbound bundle devices are always deactivated. During probe, the
	 * Runtime PM is set to enabled and active and the usage count is
	 * incremented. If the driver supports runtime PM, it should call
	 * pm_runtime_put() in its probe routine and pm_runtime_get_sync()
	 * in remove routine.
	 */
	FUNC13(dev, GB_BUNDLE_AUTOSUSPEND_MS);
	FUNC15(dev);
	FUNC8(dev);
	FUNC12(dev);
	FUNC7(dev);

	retval = driver->probe(bundle, id);
	if (retval) {
		/*
		 * Catch buggy drivers that fail to destroy their connections.
		 */
		FUNC0(!FUNC4(&bundle->connections));

		FUNC2(bundle->intf->control, bundle->id);

		FUNC5(dev);
		FUNC14(dev);
		FUNC11(dev);
		FUNC6(dev);
		FUNC10(&bundle->intf->dev);

		return retval;
	}

	FUNC10(&bundle->intf->dev);

	return 0;
}