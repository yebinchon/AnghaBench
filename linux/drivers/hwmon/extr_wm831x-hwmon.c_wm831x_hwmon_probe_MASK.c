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
struct wm831x {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 struct wm831x* FUNC1 (int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (TYPE_1__*,char*,struct wm831x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wm831x_groups ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct wm831x *wm831x = FUNC1(pdev->dev.parent);
	struct device *hwmon_dev;

	hwmon_dev = FUNC2(&pdev->dev, "wm831x",
							   wm831x,
							   wm831x_groups);
	return FUNC0(hwmon_dev);
}