#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct intel_th_driver {int /*<<< orphan*/  (* unassign ) (struct intel_th_device*,struct intel_th_device*) ;int /*<<< orphan*/  (* remove ) (struct intel_th_device*) ;scalar_t__ attr_group; } ;
struct TYPE_5__ {scalar_t__ driver; int /*<<< orphan*/  kobj; } ;
struct intel_th_device {scalar_t__ type; TYPE_2__ dev; } ;
struct intel_th {int num_thdevs; TYPE_3__** thdev; } ;
struct device {TYPE_1__* parent; int /*<<< orphan*/  driver; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ INTEL_TH_SWITCH ; 
 int FUNC0 (struct device*,struct intel_th_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intel_th_child_remove ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_th_device*,struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct intel_th* FUNC10 (struct intel_th_device*) ; 
 struct intel_th_device* FUNC11 (struct device*) ; 
 struct intel_th_driver* FUNC12 (int /*<<< orphan*/ ) ; 
 struct intel_th_device* FUNC13 (struct intel_th_device*) ; 

__attribute__((used)) static int FUNC14(struct device *dev)
{
	struct intel_th_driver *thdrv = FUNC12(dev->driver);
	struct intel_th_device *thdev = FUNC11(dev);
	struct intel_th_device *hub = FUNC13(thdev);
	int err;

	if (thdev->type == INTEL_TH_SWITCH) {
		struct intel_th *th = FUNC10(hub);
		int i, lowest;

		/* disconnect outputs */
		err = FUNC0(dev, thdev, intel_th_child_remove);
		if (err)
			return err;

		/*
		 * Remove outputs, that is, hub's children: they are created
		 * at hub's probe time by having the hub call
		 * intel_th_output_enable() for each of them.
		 */
		for (i = 0, lowest = -1; i < th->num_thdevs; i++) {
			/*
			 * Move the non-output devices from higher up the
			 * th->thdev[] array to lower positions to maintain
			 * a contiguous array.
			 */
			if (th->thdev[i]->type != INTEL_TH_OUTPUT) {
				if (lowest >= 0) {
					th->thdev[lowest] = th->thdev[i];
					th->thdev[i] = NULL;
					++lowest;
				}

				continue;
			}

			if (lowest == -1)
				lowest = i;

			FUNC1(th->thdev[i]);
			th->thdev[i] = NULL;
		}

		if (lowest >= 0)
			th->num_thdevs = lowest;
	}

	if (thdrv->attr_group)
		FUNC9(&thdev->dev.kobj, thdrv->attr_group);

	FUNC5(dev);

	thdrv->remove(thdev);

	if (FUNC2(thdev)) {
		struct intel_th_driver *hubdrv =
			FUNC12(dev->parent->driver);

		if (hub->dev.driver)
			/* does not talk to hardware */
			hubdrv->unassign(hub, thdev);
	}

	FUNC3(dev);
	FUNC6(dev);
	FUNC4(dev);

	return 0;
}