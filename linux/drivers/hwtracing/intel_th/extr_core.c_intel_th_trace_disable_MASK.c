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
struct intel_th_driver {int /*<<< orphan*/  (* disable ) (struct intel_th_device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; int /*<<< orphan*/  parent; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ dev; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ INTEL_TH_SWITCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_th_device*,int /*<<< orphan*/ *) ; 
 struct intel_th_device* FUNC3 (int /*<<< orphan*/ ) ; 
 struct intel_th_driver* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct intel_th_device *thdev)
{
	struct intel_th_device *hub = FUNC3(thdev->dev.parent);
	struct intel_th_driver *hubdrv = FUNC4(hub->dev.driver);

	FUNC0(hub->type != INTEL_TH_SWITCH);
	if (FUNC0(thdev->type != INTEL_TH_OUTPUT))
		return -EINVAL;

	hubdrv->disable(hub, &thdev->output);
	FUNC1(&thdev->dev);

	return 0;
}