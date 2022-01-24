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
struct intel_th_driver {int /*<<< orphan*/  (* trig_switch ) (struct intel_th_device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  driver; int /*<<< orphan*/  parent; } ;
struct intel_th_device {scalar_t__ type; int /*<<< orphan*/  output; TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ INTEL_TH_OUTPUT ; 
 scalar_t__ INTEL_TH_SWITCH ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_th_device*,int /*<<< orphan*/ *) ; 
 struct intel_th_device* FUNC2 (int /*<<< orphan*/ ) ; 
 struct intel_th_driver* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct intel_th_device *thdev)
{
	struct intel_th_device *hub = FUNC2(thdev->dev.parent);
	struct intel_th_driver *hubdrv = FUNC3(hub->dev.driver);

	if (FUNC0(hub->type != INTEL_TH_SWITCH))
		return -EINVAL;

	if (FUNC0(thdev->type != INTEL_TH_OUTPUT))
		return -EINVAL;

	hubdrv->trig_switch(hub, &thdev->output);

	return 0;
}