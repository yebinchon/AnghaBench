#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct device* dev; int /*<<< orphan*/ * funcs; } ;
struct sharp_panel {TYPE_2__ base; TYPE_1__* link1; int /*<<< orphan*/  backlight; int /*<<< orphan*/  supply; int /*<<< orphan*/ * mode; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_mode ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  sharp_panel_funcs ; 

__attribute__((used)) static int FUNC6(struct sharp_panel *sharp)
{
	struct device *dev = &sharp->link1->dev;

	sharp->mode = &default_mode;

	sharp->supply = FUNC3(&sharp->link1->dev, "power");
	if (FUNC0(sharp->supply))
		return FUNC1(sharp->supply);

	sharp->backlight = FUNC2(dev);

	if (FUNC0(sharp->backlight))
		return FUNC1(sharp->backlight);

	FUNC5(&sharp->base);
	sharp->base.funcs = &sharp_panel_funcs;
	sharp->base.dev = &sharp->link1->dev;

	return FUNC4(&sharp->base);
}