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
struct intel_th_driver {int (* probe ) (struct intel_th_device*) ;int (* assign ) (struct intel_th_device*,struct intel_th_device*) ;int /*<<< orphan*/  (* remove ) (struct intel_th_device*) ;scalar_t__ attr_group; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  driver; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; } ;
struct device {struct device* parent; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ INTEL_TH_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct intel_th_device*) ; 
 int FUNC6 (struct intel_th_device*,struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_th_device*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct intel_th_device* FUNC9 (struct device*) ; 
 struct intel_th_driver* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct device *dev)
{
	struct intel_th_driver *thdrv = FUNC10(dev->driver);
	struct intel_th_device *thdev = FUNC9(dev);
	struct intel_th_driver *hubdrv;
	struct intel_th_device *hub = NULL;
	int ret;

	if (thdev->type == INTEL_TH_SWITCH)
		hub = thdev;
	else if (dev->parent)
		hub = FUNC9(dev->parent);

	if (!hub || !hub->dev.driver)
		return -EPROBE_DEFER;

	hubdrv = FUNC10(hub->dev.driver);

	FUNC4(dev);
	FUNC3(dev);
	FUNC2(dev);

	ret = thdrv->probe(FUNC9(dev));
	if (ret)
		goto out_pm;

	if (thdrv->attr_group) {
		ret = FUNC8(&thdev->dev.kobj, thdrv->attr_group);
		if (ret)
			goto out;
	}

	if (thdev->type == INTEL_TH_OUTPUT &&
	    !FUNC0(thdev))
		/* does not talk to hardware */
		ret = hubdrv->assign(hub, thdev);

out:
	if (ret)
		thdrv->remove(thdev);

out_pm:
	if (ret)
		FUNC1(dev);

	return ret;
}