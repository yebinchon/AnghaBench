#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct adv7511 {scalar_t__ type; unsigned int num_supplies; TYPE_2__* supplies; TYPE_1__* i2c_main; } ;
struct TYPE_6__ {char* supply; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ ADV7511 ; 
 void* FUNC0 (char**) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char** adv7511_supply_names ; 
 char** adv7533_supply_names ; 
 TYPE_2__* FUNC1 (struct device*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,unsigned int,TYPE_2__*) ; 
 int FUNC3 (unsigned int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct adv7511 *adv)
{
	struct device *dev = &adv->i2c_main->dev;
	const char * const *supply_names;
	unsigned int i;
	int ret;

	if (adv->type == ADV7511) {
		supply_names = adv7511_supply_names;
		adv->num_supplies = FUNC0(adv7511_supply_names);
	} else {
		supply_names = adv7533_supply_names;
		adv->num_supplies = FUNC0(adv7533_supply_names);
	}

	adv->supplies = FUNC1(dev, adv->num_supplies,
				     sizeof(*adv->supplies), GFP_KERNEL);
	if (!adv->supplies)
		return -ENOMEM;

	for (i = 0; i < adv->num_supplies; i++)
		adv->supplies[i].supply = supply_names[i];

	ret = FUNC2(dev, adv->num_supplies, adv->supplies);
	if (ret)
		return ret;

	return FUNC3(adv->num_supplies, adv->supplies);
}