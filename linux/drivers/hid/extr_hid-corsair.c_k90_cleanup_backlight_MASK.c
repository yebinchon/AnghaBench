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
struct hid_device {int dummy; } ;
struct corsair_drvdata {TYPE_2__* backlight; } ;
struct TYPE_3__ {TYPE_2__* name; } ;
struct TYPE_4__ {int removed; TYPE_1__ cdev; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct corsair_drvdata* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct hid_device *dev)
{
	struct corsair_drvdata *drvdata = FUNC1(dev);

	if (drvdata->backlight) {
		drvdata->backlight->removed = true;
		FUNC3(&drvdata->backlight->cdev);
		FUNC0(&drvdata->backlight->work);
		FUNC2(drvdata->backlight->cdev.name);
		FUNC2(drvdata->backlight);
	}
}