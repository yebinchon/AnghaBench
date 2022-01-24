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
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct intel_th_driver {TYPE_1__ driver; int /*<<< orphan*/  (* deactivate ) (struct intel_th_device*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  driver; } ;
struct intel_th_device {TYPE_2__ dev; } ;
struct intel_th {int /*<<< orphan*/  (* deactivate ) (struct intel_th*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_th*) ; 
 struct intel_th* FUNC5 (struct intel_th_device*) ; 
 struct intel_th_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct intel_th_device *thdev)
{
	struct intel_th_driver *thdrv =
		FUNC6(thdev->dev.driver);
	struct intel_th *th = FUNC5(thdev);

	if (!thdrv)
		return;

	if (thdrv->deactivate)
		thdrv->deactivate(thdev);
	else
		FUNC0(thdev);

	if (th->deactivate)
		th->deactivate(th);

	FUNC2(&thdev->dev);
	FUNC1(thdrv->driver.owner);
}