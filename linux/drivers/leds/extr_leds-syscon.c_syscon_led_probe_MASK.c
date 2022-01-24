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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  brightness_set; void* default_trigger; } ;
struct syscon_led {int offset; int mask; int state; TYPE_1__ cdev; struct regmap* map; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct syscon_led* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,TYPE_1__*) ; 
 void* FUNC6 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct syscon_led*) ; 
 int FUNC9 (struct regmap*,int,int*) ; 
 int FUNC10 (struct regmap*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  syscon_led_set ; 
 struct regmap* FUNC12 (struct device_node*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct device *parent;
	struct regmap *map;
	struct syscon_led *sled;
	const char *state;
	int ret;

	parent = dev->parent;
	if (!parent) {
		FUNC2(dev, "no parent for syscon LED\n");
		return -ENODEV;
	}
	map = FUNC12(parent->of_node);
	if (FUNC0(map)) {
		FUNC2(dev, "no regmap for syscon LED parent\n");
		return FUNC1(map);
	}

	sled = FUNC4(dev, sizeof(*sled), GFP_KERNEL);
	if (!sled)
		return -ENOMEM;

	sled->map = map;

	if (FUNC7(np, "offset", &sled->offset))
		return -EINVAL;
	if (FUNC7(np, "mask", &sled->mask))
		return -EINVAL;
	sled->cdev.name =
		FUNC6(np, "label", NULL) ? : np->name;
	sled->cdev.default_trigger =
		FUNC6(np, "linux,default-trigger", NULL);

	state = FUNC6(np, "default-state", NULL);
	if (state) {
		if (!FUNC11(state, "keep")) {
			u32 val;

			ret = FUNC9(map, sled->offset, &val);
			if (ret < 0)
				return ret;
			sled->state = !!(val & sled->mask);
		} else if (!FUNC11(state, "on")) {
			sled->state = true;
			ret = FUNC10(map, sled->offset,
						 sled->mask,
						 sled->mask);
			if (ret < 0)
				return ret;
		} else {
			sled->state = false;
			ret = FUNC10(map, sled->offset,
						 sled->mask, 0);
			if (ret < 0)
				return ret;
		}
	}
	sled->cdev.brightness_set = syscon_led_set;

	ret = FUNC5(dev, &sled->cdev);
	if (ret < 0)
		return ret;

	FUNC8(pdev, sled);
	FUNC3(dev, "registered LED %s\n", sled->cdev.name);

	return 0;
}