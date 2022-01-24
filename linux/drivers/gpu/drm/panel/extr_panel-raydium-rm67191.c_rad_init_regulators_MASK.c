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
struct rad_panel {int num_supplies; TYPE_2__* supplies; TYPE_1__* dsi; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  supply; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC1 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int,TYPE_2__*) ; 
 int /*<<< orphan*/ * rad_supply_names ; 

__attribute__((used)) static int FUNC3(struct rad_panel *rad)
{
	struct device *dev = &rad->dsi->dev;
	int i;

	rad->num_supplies = FUNC0(rad_supply_names);
	rad->supplies = FUNC1(dev, rad->num_supplies,
				     sizeof(*rad->supplies), GFP_KERNEL);
	if (!rad->supplies)
		return -ENOMEM;

	for (i = 0; i < rad->num_supplies; i++)
		rad->supplies[i].supply = rad_supply_names[i];

	return FUNC2(dev, rad->num_supplies, rad->supplies);
}